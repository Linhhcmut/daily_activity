import 'package:daily/pages/widget_base.dart/navigator_page_base.dart';
import 'package:flutter/material.dart';

class ElevatorButtonBase extends StatelessWidget {
  final int primaryColor;
  final String textButton;
  final Color colorText;
  final double elevation;
  final Widget pageNavigator;

  ElevatorButtonBase({
    this.primaryColor,
    this.textButton,
    this.colorText,
    this.elevation,
    this.pageNavigator,
  });
  @override
  Widget build(BuildContext context) {
    var onPressed = NavigationAnimationPage();

    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          onPressed.navigatorPage(context, pageNavigator);
        },
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          primary: Color(primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Text(
          textButton,
          style: TextStyle(fontSize: 16, color: colorText),
        ),
      ),
    );
  }
}
