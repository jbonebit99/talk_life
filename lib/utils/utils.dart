import 'dart:convert';
import 'dart:io';
import 'package:device_info/device_info.dart';


import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:uuid/uuid.dart';


const shift = (0xFF << 24);

const SHOULD_SHOW_ONBOARDING = 'SHOULD_SHOW_ONBOARDING';
const JWT_TOKEN = 'jwt_token';

const SETTING_LOCAL = 'setting_local';

const SETTING_APP_LOCK = 'SETTING_APP_LOCK';
const SETTING_PASSCODE = 'SETTING_PASSCODE';
const PASSCODE_LENGTH = 6;
const SETTING_APP_LOCK_METHOD = 'SETTING_APP_LOCK_METHOD';
const SETTING_APP_LOCK_METHOD_PASSCODE =
    'SETTING_APP_LOCK_METHOD_PASSCODE';
const SETTING_APP_LOCK_METHOD_BIOMETRIC =
    'SETTING_APP_LOCK_METHOD_BIOMETRIC';
const SETTING_APP_FINGERPRINT = 'SETTING_APP_FINGERPRINT';
const SETTING_APP_FACEID = 'SETTING_APP_FACEID';

const PREF_LAST_FCM_TOKEN = 'PREF_LAST_FCM_TOKEN';

const Bold = FontWeight.w700;
const SemiBold = FontWeight.w600;
const Medium = FontWeight.w500;
const Regular = FontWeight.w400;
const SemiThin = FontWeight.w300;
const Thin = FontWeight.w200;
const Thinness = FontWeight.w100;

const APP_NAME = 'ColigoMed';
const COLIGO_ASSIST_NAME = 'Coligo Assist';

class Utils {
  static final Utils _singleton = new Utils._internal();
  late FlutterSecureStorage storage;

  factory Utils() {
    return _singleton;
  }

  Utils._internal() {
    storage = new FlutterSecureStorage();
  }

  saveSecureData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String?> getSecureData(String key) async {
    try{
      return await storage.read(key: key);
    }catch(e){
      return '';
    }
  }

  deleteSecureData(String key) {
    storage.delete(key: key);
  }

  deleteAllSecureData() {
    storage.deleteAll();
  }

  static bool isValidEmail(String email) {
    String p = r"^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    RegExp regExp = new RegExp(p);
    return regExp.hasMatch(email);
  }

  Future<String> getToken() async {
    String token = await utils.getSecureData(JWT_TOKEN) ?? "";
    // log(token);
    return token;
  }

  logError({required Exception exception, dynamic error, dynamic content}) {

  }

  toast(dynamic str) {
    Fluttertoast.showToast(
        msg: str,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        textColor: Colors.white,
        fontSize: 15.0);
  }

  errorToast(String str) {
    Fluttertoast.showToast(
        msg: str,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 13.0);
  }

  String generateMd5(String input) {
    return md5.convert(utf8.encode(input)).toString();
  }

  Future<String> oSVersion() async {
    if (Platform.isAndroid) {
      var androidInfo = await DeviceInfoPlugin().androidInfo;
      var release = androidInfo.version.release;
      return 'android-$release'.toLowerCase();
    }

    if (Platform.isIOS) {
      var iosInfo = await DeviceInfoPlugin().iosInfo;
      var systemName = iosInfo.systemName;
      var version = iosInfo.systemVersion;
      var name = iosInfo.name;
      var model = iosInfo.model;
      print('$systemName $version, $name $model');
      return '$systemName-$version'.toLowerCase();
    }

    return '';
  }

  Future<String> appVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    return version;
  }

  String deviceId(){
    var uuid = Uuid();
    return uuid.v1().toString();
  }

}

final utils = new Utils();
