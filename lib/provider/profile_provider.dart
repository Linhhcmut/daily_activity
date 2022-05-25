import 'package:flutter/cupertino.dart';

class ProfileProvider extends ChangeNotifier {
  
  int _indexPage = 0;

  int get indexPage => _indexPage;

  void changeData(int index) {
    _indexPage = index;
    notifyListeners();
  }
}
