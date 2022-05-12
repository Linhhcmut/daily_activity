import 'dart:developer';

import 'package:flutter/material.dart';

class PressIconBase extends StatelessWidget {
  final String imageIcon;

  PressIconBase({this.imageIcon});
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log('google press');
      },
      child: Image.asset(imageIcon),
    );
  }
}
