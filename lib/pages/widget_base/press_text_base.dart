import 'package:daily/pages/widget_base/navigator_page_base.dart';
import 'package:flutter/material.dart';

class PressTextBase extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final Widget pageNavigator;

  PressTextBase({this.text, this.fontWeight, this.pageNavigator});

  @override
  Widget build(BuildContext context) {
    var onPressed = NavigationAnimationPage();
    return GestureDetector(
      onTap: () {
        onPressed.navigatorPage(context, pageNavigator);
      },
      child: Text(
        text,
        style: TextStyle(
            fontSize: 14, color: Color(0xff5B67CA), fontWeight: fontWeight),
      ),
    );
  }
}
