import 'dart:developer';
import 'package:flutter/cupertino.dart';

class ChangeAvatarProvider extends ChangeNotifier {
  String _oldUrlAvatar = "assets/images/avatar1.png";

  String get urlAvatar => _oldUrlAvatar;

  void changeAvatar(String newUrlAvatar, BuildContext context) {
    _oldUrlAvatar = newUrlAvatar;
    Navigator.of(context)
      ..pop()
      ..pop();
    log(_oldUrlAvatar);
    notifyListeners();
  }
}
