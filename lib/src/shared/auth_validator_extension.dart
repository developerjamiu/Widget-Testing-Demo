import 'package:flutter/material.dart';

extension AuthValidatorExtension on BuildContext {
  String? validateEmail(String? email) {
    final emailValidator = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

    if (email == null || !emailValidator.hasMatch(email)) {
      return 'Enter a valid email address';
    }
    return null;
  }

  String? validatePassword(String? password) {
    if (password == null || password.length < 6) {
      return 'Enter a valid password';
    }
    return null;
  }
}
