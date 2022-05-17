import 'package:flutter/cupertino.dart';

class ChangeText extends ChangeNotifier {
  String text1 = "Nhiem vu 1 dsajdlkasđfghjdfkldjksfhdsfklk";
  String text2 = "Nhiem vu 2 djdasdgasjdaskdsdlasddgsajkdaksd";
  String _txtdefault = "";

  String get txtdefault => _txtdefault;

  void changeText1() {
    if(text1.length > 16){
      _txtdefault = text1.substring(0, 16) + " ...";
    }
    notifyListeners();
  }

  void changeText2() {
    if(text2.length > 16){
      _txtdefault = text2.substring(0, 16) + " ...";
    }
    notifyListeners();
  }
}
