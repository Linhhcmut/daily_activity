import 'dart:async';
import 'package:daily/validations/user_validation.dart';

class EditInfoStream {
  StreamController _nameController = StreamController();
  StreamController _emailController = StreamController();
  StreamController _phoneController = StreamController();
  StreamController _countryController = StreamController();
  StreamController _provinceController = StreamController();
  StreamController _addressController = StreamController();

  Stream get nameStream => _nameController.stream;
  Stream get emailStream => _emailController.stream;
  Stream get phoneStream => _phoneController.stream;
  Stream get countryStream => _countryController.stream;
  Stream get provinceStream => _provinceController.stream;
  Stream get addressStream => _addressController.stream;

  bool isValidName(String name) {
    if (!UserInfoValidate.validateName(name: name)) {
      _nameController.sink.addError("Enter your name");
      return false;
    }
    _nameController.sink.add("OK");
    return true;
  }

  bool isValidEmail(String email) {
    if (!UserInfoValidate.validateEmail(email: email)) {
      _emailController.sink.addError("Enter your email");
      return false;
    }
    _emailController.sink.add("OK");
    return true;
  }

  bool isValidPhone(String phone) {
    if (!UserInfoValidate.validatePhonenumber(phonenumber: phone)) {
      _phoneController.sink.addError("Enter your phone");
      return false;
    }
    _phoneController.sink.add("OK");
    return true;
  }

  bool isValidCountry(String country) {
    if (!UserInfoValidate.validateCountry(country: country)) {
      _countryController.sink.addError("Enter your country");
      return false;
    }
    _countryController.sink.add("OK");
    return true;
  }

  bool isValidProvince(String province) {
    if (!UserInfoValidate.validateProvince(province: province)) {
      _provinceController.sink.addError("Enter your province");
      return false;
    }
    _provinceController.sink.add("OK");
    return true;
  }

  bool isValidAddress(String address) {
    if (!UserInfoValidate.validateAddress(address: address)) {
      _addressController.sink.addError("Enter your address");
      return false;
    }
    _addressController.sink.add("OK");
    return true;
  }
}
