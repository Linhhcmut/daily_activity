import 'dart:developer';

import 'package:daily/repositories/user_repository.dart';
import 'package:daily/stream/login_stream.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class LoginProvider extends ChangeNotifier {
  UserRepository _userRepository = UserRepository();
  LoginStream _loginStream = LoginStream();
  String _error = "";

  String get errorText => _error;

  Future<bool> signInWithEmailAndPassword(
      {String email, String password}) async {
    if (_loginStream.isValidEmail(email) &&
        _loginStream.isValidPass(password)) {
      try {
        await _userRepository.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        _error = "";
        notifyListeners();
        return true;
      } catch (e) {
        if (e.toString().contains("ERROR_NETWORK_REQUEST_FAILED")) {
          _error = "Kiểm tra kết nối mạng";
        } else if (e.toString().contains("ERROR_WRONG_PASSWORD")) {
          _error = "Mật khẩu không đúng";
        } else if (e.toString().contains("ERROR_USER_NOT_FOUND")) {
          _error = "Tên đăng nhập không đúng";
        }
        notifyListeners();
        return false;
      }
    }
    _error = "";
    notifyListeners();
    return false;
  }

  Future<bool> signInWithGoogle() async {
    try {
      await _userRepository.signInWithGoogle();
      return true;
    } on PlatformException catch (e) {
      log(e.toString());
    }
    return false;
  }
}
