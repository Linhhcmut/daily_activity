import 'package:flutter/material.dart';

class ProfileProvider extends ChangeNotifier {
  int _indexPage = 0;
  List<Color> _colorPage = [Color(0xff12175E), Colors.grey, Colors.grey];

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
}
