import 'package:daily/pages/home_page/home_page.dart';
import 'package:daily/pages/login_page/login_page.dart';
import 'package:daily/pages/register_page/register_page.dart';
import 'package:daily/pages/widget_base/navigator_page_base.dart';
import 'package:flutter/material.dart';

class ElevatorButtonBase extends StatelessWidget {
  final int primaryColor;
  final String textButton;
  final Color colorText;
  final double elevation;
  final Widget pageNavigator;
  final String email;
  final String password;
  final String onPressed;

  ElevatorButtonBase({
    this.primaryColor,
    this.textButton,
    this.colorText,
    this.elevation,
    this.pageNavigator,
    this.email,
    this.password,
    this.onPressed,
  });
  @override
  Widget build(BuildContext context) {
    var navigator = NavigationAnimationPage();
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          if (onPressed == "SpToLogin") {
            navigator.navigatorPage(context, LoginPage());
          } else if (onPressed == "SpToReg") {
            navigator.navigatorPage(context, RegisterPage());
          } else if (onPressed == "Login") {
            navigator.navigatorPage(context, HomePage());
          } else if (onPressed == "Reg") {
            navigator.navigatorPage(context, HomePage());
          }
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
