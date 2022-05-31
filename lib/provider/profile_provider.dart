import 'dart:developer';
import 'dart:io';

import 'package:daily/models/card_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ProfileProvider extends ChangeNotifier {
  int _indexPage = 0;
  List<Color> _colorPage = [Color(0xff12175E), Colors.grey, Colors.grey];
  List<CardProfileModel> _listCard = [
    CardProfileModel(
      nameCard: "Địa chỉ",
      titleCard: "Hồ Chí Minh, Việt Nam",
      contentCard:
          "261/15/17/21 Đình Phong Phú, Tăng Nhơn Phú A, Quận 9, TpHCM",
    ),
    CardProfileModel(
      nameCard: "Điện thoại",
      titleCard: "03.934.789.68",
      contentCard: "",
    ),
    CardProfileModel(
      nameCard: "Email",
      titleCard: "stevejob@gmail.com",
      contentCard: "",
    ),
  ];

  int lengthList;

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

  List<CardProfileModel> get listCart => _listCard;

  void lengListcard() {
    lengthList = _listCard.length;
    notifyListeners();
  }

  File _image;

  File get image => _image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
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
}
