import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'package:daily/pages/login_page/login_page.dart';
import 'package:daily/pages/widget_base.dart/elevator_button_base.dart';
import 'package:daily/pages/widget_base.dart/have_account_base.dart';
import 'package:daily/pages/widget_base.dart/or_login_with_base.dart';
import 'package:daily/pages/widget_base.dart/social_button_base.dart';
import 'package:daily/pages/widget_base.dart/textformfield_base.dart';
import 'package:daily/pages/widget_base.dart/title_accountPage_base.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Container(
          color: Color(0xffFFFFFF),
          child: Padding(
            padding: paddingWithScreen,
            child: ListView(
              children: <Widget>[
                TitleTextAccountPage(
                  text: "Đăng ký",
                ),
                TextFormFieldBase(
                  hideText: false,
                  hintText: "Tên đăng nhập",
                  prefixIcon: "assets/icons/username.png",
                ),
                SizedBox(height: 30),
                TextFormFieldBase(
                  hintText: "Email ID",
                  hideText: false,
                  prefixIcon: "assets/icons/email.png",
                ),
                SizedBox(height: 30),
                TextFormFieldBase(
                  hintText: "Mật khẩu",
                  hideText: true,
                  prefixIcon: "assets/icons/password.png",
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
                SizedBox(height: 60),
                ElevatorButtonBase(
                  textButton: "Đăng ký",
                  elevation: 1.0,
                  colorText: Colors.white,
                  pageNavigator: BottomNavigatorBarPage(),
                  primaryColor: 0xFF5B67CA,
                ),
                OrLoginWithBase(),
                SocialLoginButtonBase(),
                SizedBox(height: 40),
                HaveAccountBase(
                  text1: "Bạn đã có tài khoản?",
                  text2: " Đăng nhập",
                  pageNavigator: LoginPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
