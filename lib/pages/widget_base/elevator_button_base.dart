import 'dart:developer';

import 'package:daily/pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'package:daily/pages/login_page/login_page.dart';
import 'package:daily/pages/register_page/register_page.dart';
import 'package:daily/pages/widget_base/navigator_page_base.dart';
import 'package:daily/provider/login_provider.dart';
import 'package:daily/provider/register_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ElevatorButtonBase extends StatelessWidget {
  final int primaryColor;
  final String textButton;
  final Color colorText;
  final double elevation;
  final Widget pageNavigator;
  final TextEditingController emailLogin;
  final TextEditingController passwordLogin;
  final TextEditingController emailRegister;
  final TextEditingController passwordRegister;
  final String onPressed;
  final TextEditingController nameUser;

  ElevatorButtonBase({
    this.primaryColor,
    this.textButton,
    this.colorText,
    this.elevation,
    this.pageNavigator,
    this.emailLogin,
    this.passwordLogin,
    this.onPressed,
    this.emailRegister,
    this.passwordRegister,
    this.nameUser,
  });
  @override
  Widget build(BuildContext context) {
    var navigator = NavigationAnimationPage();
    return Container(
      height: 50,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () async {
          if (onPressed == "SpToLogin") {
            navigator.navigatorPage(context, LoginPage());
          } else if (onPressed == "SpToReg") {
            navigator.navigatorPage(context, RegisterPage());
          } else if (onPressed == "Login") {
            var login = await context
                .read<LoginProvider>()
                .signInWithEmailAndPassword(
                    email: emailLogin.text, password: passwordLogin.text);
            if (login) {
              navigator.navigatorPage(context, BottomNavigatorBarPage());
            } else {
              var error = context.read<LoginProvider>().errorText;
              if (error != "") {
                final snackBar = SnackBar(
                  content: Text("$error"),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }
          } else if (onPressed == "Reg") {
            var register = await context
                .read<RegisterProvider>()
                .createUserWithEmailAndPassword(
                    email: emailRegister.text,
                    password: passwordRegister.text,
                    name: nameUser.text);
            if (register) {
              navigator.navigatorPage(context, BottomNavigatorBarPage());
            } else {
              var error = context.read<RegisterProvider>().errorRegis;
              if (error != "") {
                final snackBar = SnackBar(
                  content: Text("$error"),
                  duration: Duration(seconds: 1),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            }
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
