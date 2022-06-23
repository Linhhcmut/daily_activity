import 'dart:developer';

import 'package:daily/pages/widget_base/press_icon_base.dart';
import 'package:flutter/material.dart';

class SocialLoginButtonBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log("rebuild");
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PressIconBase(
          imageIcon: "assets/icons/google.png",
          buttonName: "Google",
        ),
        SizedBox(width: 20),
        PressIconBase(
          imageIcon: "assets/icons/facebook.png",
        ),
      ],
    );
  }
}
