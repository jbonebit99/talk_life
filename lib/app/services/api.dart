import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:talk_life/utils/error.dart';
import 'package:talk_life/utils/utils.dart';

const SERVICE = 'https://apidev.talkhealth.co/api/v5';

class API {
  List<Function> _onErrorCallbacks = [];

  dynamic _prettyJson(dynamic object) {
    try {
      JsonEncoder jsonEncoder = const JsonEncoder.withIndent('  ');
      return jsonEncoder.convert(object);
    } on Error {
      return object.toString();
    }
  }

  Future<void> _addAuthHeader() async {
    _dio.options.headers['Authorization'] = 'Bearer ' + await utils.getToken();
  }

  _logging() {
    return InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) async {
      dynamic map = {};
      map["REQUEST"] = {
        "url": "[${options.method}]${options.uri.toString()}",
        "body": options.data
      };
      // log.i(_prettyJson(map));
      return handler.next(options);
    }, onResponse: (Response response, ResponseInterceptorHandler handler) async {
      dynamic map = {};
      map["RESPONSE"] = {
        "url": "[${response.requestOptions.method}]${response.requestOptions.uri.toString()}",
        "body": response.data,
        "status": '${response.statusCode} ${response.statusMessage}'
      };
      // log.i(_prettyJson(map));
      return handler.next(response);
    }, onError: (DioError e, ErrorInterceptorHandler handler) async {
      dynamic map = {};
      map["ERROR"] = {
        "url": "[${e.requestOptions.method}]${e.requestOptions.uri.toString()}",
        "status": e.response?.statusCode,
        "response": e.response?.data,
      };
      // log.i(_prettyJson(map));
      utils.logError(exception: Exception(e), content: map.toString());

      try {
        if (e.response?.statusCode == HttpStatus.forbidden) {
          publishToErrorCallbacks(APIUnauthorizedException());
        } else {
          publishToErrorCallbacks(e);
        }
      } on DioError catch (error) {
        e = error;
      }

      return handler.next(e);
    });
  }

  void onError(callback) {
    _onErrorCallbacks.add(callback);
  }

  void publishToErrorCallbacks(Exception error) {
    _onErrorCallbacks.forEach((callback) {
      callback(error);
      if (error is APIUnauthorizedException) {
        throw APIUnauthorizedException();
      } else if (error is DioError) {
        // Check network unable
        if (error.type == DioErrorType.other && '${error.error}'.contains("Failed host lookup")) {
          throw SocketException();
        }
        int? statusCode = error.response?.statusCode;
        if ([HttpStatus.badRequest, HttpStatus.internalServerError, HttpStatus.unauthorized]
            .contains(statusCode)) {
          var data = error.response!.data;
          String errorDescription = data['detail'] ?? data['error'];
          throw APIErrorException(errorMessage: errorDescription);
        }
      }
    });
  }

  static final API _singleton = API._internal();
  late Dio _dio;

  factory API() {
    return _singleton;
  }

  API._internal() {
    _dio = Dio();
    _dio.options.connectTimeout = 50000; //5s
    _dio.options.receiveTimeout = 30000;
    _dio.options.responseType = ResponseType.json;

    _dio.interceptors.add(_logging());
  }

  Future<Response> register({required String email, required String password}) async {
    String oSVersion = await utils.oSVersion();
    String appVersion = await utils.appVersion();
    String deviceId = utils.deviceId();
    final res = await _dio.post("$SERVICE/users/email", data: {
      "OSVersion": oSVersion,
      "AppVersion": appVersion,
      "DeviceId": deviceId,
      "Email": email,
      "Password": utils.generateMd5(password)
    });
    return res;
  }

  Future<Response> getCategory() async {
    _addAuthHeader();
    return await _dio.get("$SERVICE/users/{userId:int}/categories");
  }

  Future<Response> updateCategory({
    required List<int> listCategoryIds,
    required int userId,
  }) async {
    _addAuthHeader();
    return await _dio
        .put("$SERVICE/users/$userId/default-categories", data: {"CategoryIds": listCategoryIds});
  }
}

abstract class APIException implements DioError {
  @override
  var error;

  @override
  late RequestOptions requestOptions;

  @override
  late DioErrorType type;

  @override
  late Response? response;

  @override
  late StackTrace? stackTrace;

  @override
  String get message => throw UnimplementedError();

  @override
  String toString() {
    return message;
  }
}

class APIUnauthorizedException extends APIException {
  @override
  String get message => Errors.invalidCredential;
}

class APIErrorException extends APIException {
  String errorMessage;

  APIErrorException({required this.errorMessage});

  @override
  String get message => errorMessage;
}

class SocketException extends APIException {
  @override
  String get message => Errors.noInternetConnection;
}
