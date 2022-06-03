import 'dart:developer';
import 'dart:io';
import 'package:daily/models/card_profile_model.dart';
import 'package:daily/models/info_user_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier {
  int _indexPage = 1;
  List<Color> _colorPage = [Colors.grey, Color(0xff12175E), Colors.grey];
  int get indexPage => _indexPage;
  List<Color> get colorPage => _colorPage;

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
  InfoUser _infoUser = InfoUser(
    name: "Steve Jobs",
    email: "stevejob@gmail.com",
    phonenumber: "+844-3926-3000",
    country: "Việt Nam",
    province: "Hồ Chí Minh",
    address: "261/15/17/21 Đình Phong Phú, Tăng Nhơn Phú A, Quận 9, TpHCM",
  );
  String _firstName;
  InfoUser get infoUser => _infoUser;
  String get firstname => _firstName;
  File get imageSave => _imageSave;

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
    var listname = name.split(" ");
    _firstName = listname[0];
    _infoUser.email = email;
    _infoUser.phonenumber = phone;
    _infoUser.country = country;
    _infoUser.province = province;
    _infoUser.address = address;
    notifyListeners();
  }

  List<CardProfileModel> _listCard = [];
  List<CardProfileModel> get listCart => _listCard;

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

  void getFirstName() {
    var listname = _infoUser.name.split(" ");
    _firstName = listname[0];
    notifyListeners();
  }
}
