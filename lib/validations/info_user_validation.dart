class UserInfoValidate {
  static bool validateName({String name}) {
    if (name.length < 2) {
      return false;
    }
    return true;
  }

  static bool validateEmail({String email}) {
    if (email == null) {
      return false;
    }
    var isValid = RegExp(r"^[a-z0-9](\.?[a-z0-9]){4,}@g(oogle)?mail\.com")
        .hasMatch(email);
    if (!isValid) {
      return false;
    }
    return true;
  }

  static bool validatePhonenumber({String phonenumber}) {
    if (phonenumber.length < 10) {
      return false;
    }
    return true;
  }

  static bool validateCountry({String country}) {
    if (country.length < 4) {
      return false;
    }
    return true;
  }

  static bool validateProvince({String province}) {
    if (province.length < 3) {
      return false;
    }
    return true;
  }

  static bool validateAddress({String address}) {
    if (address.length < 10) {
      return false;
    }
    return true;
  }
}
