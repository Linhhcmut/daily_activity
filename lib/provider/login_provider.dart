import 'dart:developer';

import 'package:daily/repositories/user_repository.dart';
import 'package:daily/stream/login_stream.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class LoginProvider extends ChangeNotifier {
  UserRepository _userRepository = UserRepository();
  LoginStream _loginStream = LoginStream();

  Future<bool> signInWithEmailAndPassword(
      {String email, String password}) async {
    if (_loginStream.isValidEmail(email) &&
        _loginStream.isValidPass(password)) {
      try {
        await _userRepository.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
        return true;
      } catch (e) {
        log(e.toString());
        return false;
      }
    }
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
