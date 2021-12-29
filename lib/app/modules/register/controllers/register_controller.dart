import 'dart:developer';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:talk_life/app/services/api.dart';
import 'package:crypto/crypto.dart';

class RegisterController extends GetxController {
  Rx<PasswordStrength> passwordStrength =
      PasswordStrength(name: '', color: 0xFF647FFF, value: 0.0).obs;
  TextEditingController emailEditController = TextEditingController();
  TextEditingController passwordEditController = TextEditingController();
  RxBool checkOld = false.obs;
  RxBool showPassword = true.obs;
  @override
  void onInit() {
    passwordEditController.addListener(() {
      checkPasswordStrength(passwordEditController.text);
    });
  }

  @override
  void onReady() {}

  @override
  void onClose() {}
  checkPasswordStrength(String password) {
    if (password == '') {
      return passwordStrength.value = PasswordStrength(name: '', color: 0xFF647FFF, value: 0.0);
    }
    final isNumericChar = password.contains(RegExp(r'[0-9]'));
    final isUppercase = password.contains(RegExp(r'[A-Z]'));
    final isLowercase = password.contains(RegExp(r'[a-z]'));
    final isSpecialChar = password.contains(RegExp(r'[^\w\*]'));

    if (password.length > 8) {
      if (isNumericChar && isUppercase && isLowercase && isSpecialChar) {
        passwordStrength.value = PasswordStrength(name: 'Strong', color: 0xFF91E2B7, value: 1);
      } else if ((isLowercase && isUppercase) && (isSpecialChar || isNumericChar)) {
        passwordStrength.value = PasswordStrength(name: 'Good', color: 0xFF647FFF, value: 0.75);
      } else if ((isLowercase && isUppercase) || isSpecialChar || isNumericChar) {
        passwordStrength.value = PasswordStrength(name: 'Fair', color: 0xFFE3A063, value: 0.5);
      } else {
        passwordStrength.value = PasswordStrength(name: 'Week', color: 0xFFE05151, value: 0.25);
      }
    } else {
      passwordStrength.value = PasswordStrength(name: 'Too short', color: 0xFF808080, value: 0.0);
    }
  }

  Future signin() async {
    if (checkOld.value && emailEditController.text != '' && passwordEditController.text != '') {
      register(
          email: emailEditController.text.trim(), password: passwordEditController.text.trim());
    } else {
      log('Cannot Sign');
    }
  }

  Future register({required String email, required String password}) async {
    final response = await API().register(email: email, password: password);
    return response;
  }
}

class PasswordStrength {
  String name;
  int color;
  double value;
  PasswordStrength({required this.name, required this.color, required this.value});
}
