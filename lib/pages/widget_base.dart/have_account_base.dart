import 'package:daily/pages/widget_base.dart/press_text_base.dart';
import 'package:flutter/material.dart';

class HaveAccountBase extends StatelessWidget {
  final String text1;
  final String text2;
  final Widget pageNavigator;

  HaveAccountBase({this.pageNavigator, this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          text1,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        PressTextBase(
          text: text2,
          fontWeight: FontWeight.bold,
          pageNavigator: pageNavigator,
        )
      ],
    );
  }
}
