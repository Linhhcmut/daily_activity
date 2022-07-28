import 'package:daily/repositories/user_repository.dart';
import 'package:daily/stream/register_stream.dart';
import 'package:flutter/cupertino.dart';

class RegisterProvider extends ChangeNotifier {
  UserRepository _userRepository = UserRepository();
  RegisterStream _registerStream = RegisterStream();
  String _errorRegis = "";

  String get errorRegis => _errorRegis; 

  Future<bool> createUserWithEmailAndPassword(
      {String email, String password, String name}) async {
    if (_registerStream.isValidEmail(email) &&
        _registerStream.isValidPassword(password) &&
        _registerStream.isValidName(name)) {
      try {
        await _userRepository.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        _errorRegis = "";
        notifyListeners();
        return true;
      } catch (e) {
        if (e.toString().contains("ERROR_EMAIL_ALREADY_IN_USE")) {
          _errorRegis = "Tài khoản email đã được sử dụng";
        } else if (e.toString().contains("ERROR_NETWORK_REQUEST_FAILED")) {
          _errorRegis = "Kiểm tra kết nối mạng";
        }
      }
    }
    notifyListeners();
    return false;
  }
}
