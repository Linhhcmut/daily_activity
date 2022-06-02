import 'dart:developer';
import 'dart:io';

import 'package:daily/models/card_profile_model.dart';
import 'package:daily/models/info_user_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier {
  int _indexPage;
  List<Color> _colorPage = [Color(0xff12175E), Colors.grey, Colors.grey];
  InfoUser _infoUser = InfoUser(
    name: "Steve Jobs",
    email: "stevejob@gmail.com",
    phonenumber: "+844-3926-3000",
    country: "Việt Nam",
    province: "Hồ Chí Minh",
    address: "261/15/17/21 Đình Phong Phú, Tăng Nhơn Phú A, Quận 9, TpHCM",
  );
  List<CardProfileModel> _listCard = [];
  int lengthList;

  int get indexPage => _indexPage;
  List<Color> get colorPage => _colorPage;
  InfoUser get infoUser => _infoUser;

  void changeData(int index) {
    _indexPage = index;
    if (index == 0) {
      _colorPage = [Color(0xff12175E), Colors.grey, Colors.grey];
    } else if (index == 1) {
      _colorPage = [Colors.grey, Color(0xff12175E), Colors.grey];
    } else if (index == 2) {
      _colorPage = [Colors.grey, Colors.grey, Color(0xff12175E)];
    }
    notifyListeners();
  }

  List<CardProfileModel> get listCart => _listCard;

  File _image;

  File get image => _image;

  Future pickImage({ImageSource source}) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) {
        return;
      }
      final imageTemporary = File(image.path);
      _image = imageTemporary;
      notifyListeners();
    } on PlatformException catch (e) {
      log("$e");
    }
  }

  File _imageSave;
  File get imageSave => _imageSave;
  bool _boolsave;
  bool get boolsave => _boolsave;

  void editButton() {
    _boolsave = false;
    notifyListeners();
  }

  void saveProfileData({
    String name,
    String email,
    String phone,
    String country,
    String province,
    String address,
  }) {
    _imageSave = _image;
    _infoUser.name = name;
    _infoUser.email = email;
    _infoUser.phonenumber = phone;
    _infoUser.country = country;
    _infoUser.province = province;
    _infoUser.address = address;
    _boolsave = true;
    notifyListeners();
  }

  void getDataCard() {
    _listCard = [
      CardProfileModel(
        nameCard: "Địa chỉ",
        titleCard: _infoUser.province + ", " + _infoUser.country,
        contentCard: _infoUser.address,
      ),
      CardProfileModel(
        nameCard: "Điện thoại",
        titleCard: _infoUser.phonenumber,
        contentCard: "",
      ),
      CardProfileModel(
        nameCard: "Email",
        titleCard: _infoUser.email,
        contentCard: "",
      ),
    ];
    notifyListeners();
  }
}
