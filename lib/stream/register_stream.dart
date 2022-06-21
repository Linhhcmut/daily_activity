import 'dart:async';

import 'package:daily/validations/user_validation.dart';

class RegisterStream {
  StreamController _emailController = StreamController();
  StreamController _passController = StreamController();
  StreamController _nameController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;
  Stream get nameStream => _nameController.stream;

  bool isValidEmail(String email) {
    if (!UserInfoValidate.validateEmail(email: email)) {
      _emailController.sink.addError("Enter your email");
      return false;
    }
    _emailController.sink.add("OK");
    return true;
  }

  bool isValidPassword(String password) {
    if (!UserInfoValidate.validatePassword(password: password)) {
      _passController.sink.addError("Enter your password");
      return false;
    }
    _passController.sink.add("OK");
    return true;
  }

  bool isValidName(String name) {
    if (!UserInfoValidate.validateName(name: name)) {
      _nameController.sink.addError("Enter your name");
      return false;
    }
    _nameController.sink.add("OK");
    return true;
  }
}
