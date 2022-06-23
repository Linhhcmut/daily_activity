import 'dart:async';
import 'package:daily/validations/user_validation.dart';

class LoginStream {
  StreamController _emailController = StreamController();
  StreamController _passController = StreamController();

  Stream get emailStream => _emailController.stream;
  Stream get passStream => _passController.stream;

  bool isValidEmail(String email) {
    if (!UserInfoValidate.validateEmail(email: email)) {
      _emailController.sink.addError("Enter your email");
      return false;
    }
    _emailController.sink.add("OK");
    return true;
  }

  bool isValidPass(String password) {
    if (!UserInfoValidate.validatePassword(password: password)) {
      _passController.sink.addError("Enter your password");
      return false;
    }
    _passController.sink.add("OK");
    return true;
  }
}
