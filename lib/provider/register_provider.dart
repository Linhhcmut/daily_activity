import 'dart:developer';

import 'package:daily/repositories/user_repository.dart';
import 'package:daily/stream/register_stream.dart';
import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {
  UserRepository _userRepository = UserRepository();
  RegisterStream _registerStream = RegisterStream();

  Future<bool> createUserWithEmailAndPassword(
      {String email, String password, String name}) async {
    log("reg");
    if (_registerStream.isValidEmail(email) &&
        _registerStream.isValidPassword(password) &&
        _registerStream.isValidName(name)) {
      try {
        await _userRepository.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        return true;
      } catch (e) {
        log(e);
      }
    }
    return false;
  }
}
