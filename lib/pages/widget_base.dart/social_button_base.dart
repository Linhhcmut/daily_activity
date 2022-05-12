import 'package:daily/pages/widget_base.dart/press_icon_base.dart';
import 'package:flutter/material.dart';

class SocialLoginButtonBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PressIconBase(
          imageIcon: "assets/icons/google.png",
        ),
        SizedBox(width: 20),
        PressIconBase(
          imageIcon: "assets/icons/facebook.png",
        ),
      ],
    );
  }
}
