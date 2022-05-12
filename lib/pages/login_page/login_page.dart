import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/forgotpass_page/forgotPass.dart';
import 'package:daily/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'package:daily/pages/register_page/register_page.dart';
import 'package:daily/pages/widget_base.dart/elevator_button_base.dart';
import 'package:daily/pages/widget_base.dart/have_account_base.dart';
import 'package:daily/pages/widget_base.dart/or_login_with_base.dart';
import 'package:daily/pages/widget_base.dart/social_button_base.dart';
import 'package:daily/pages/widget_base.dart/title_accountPage_base.dart';
import 'package:daily/pages/widget_base.dart/press_text_base.dart';
import 'package:daily/pages/widget_base.dart/textformfield_base.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Color(0xffFFFFFF),
          child: Padding(
            padding: paddingWithScreen,
            child: ListView(
              children: <Widget>[
                TitleTextAccountPage(
                  text: "Đăng nhập",
                ),
                TextFormFieldBase(
                  hintText: "Tên đăng nhập hoặc Email",
                  prefixIcon: "assets/icons/email.png",
                  hideText: false,
                ),
                SizedBox(height: 30),
                TextFormFieldBase(
                  hintText: "Mật khẩu",
                  prefixIcon: "assets/icons/password.png",
                  hideText: true,
                  suffixIcon: Icon(Icons.visibility_off_outlined),
                ),
                SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: PressTextBase(
                    text: "Quên mật khẩu?",
                    pageNavigator: FotgotPasswordPage(),
                  ),
                ),
                SizedBox(height: 60),
                ElevatorButtonBase(
                  primaryColor: 0xFF5B67CA,
                  textButton: "Đăng nhập",
                  colorText: Colors.white,
                  pageNavigator: BottomNavigatorBarPage(),
                  elevation: 1.0,
                ),
                OrLoginWithBase(),
                SocialLoginButtonBase(),
                SizedBox(height: 80),
                HaveAccountBase(
                  text1: "Bạn chưa có tài khoản?",
                  text2: " Đăng ký",
                  pageNavigator: RegisterPage(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
