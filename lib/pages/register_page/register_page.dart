import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'package:daily/pages/login_page/login_page.dart';
import 'package:daily/pages/widget_base/elevator_button_base.dart';
import 'package:daily/pages/widget_base/have_account_base.dart';
import 'package:daily/pages/widget_base/or_login_with_base.dart';
import 'package:daily/pages/widget_base/social_button_base.dart';
import 'package:daily/pages/widget_base/textformfield_base.dart';
import 'package:daily/pages/widget_base/title_accountPage_base.dart';
import 'package:daily/stream/register_stream.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passController = TextEditingController();
  RegisterStream _registerStream = RegisterStream();
  bool obserText;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _nameController.addListener(() {
      _registerStream.isValidName(_nameController.text);
    });
    _emailController.addListener(() {
      _registerStream.isValidEmail(_emailController.text);
    });
    _passController.addListener(() {
      _registerStream.isValidPassword(_passController.text);
    });
  }

  @override
  void initState() {
    super.initState();
    obserText = true;
  }

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
                StreamBuilder(
                    stream: _registerStream.nameStream,
                    builder: (context, snapshot) {
                      return TextFormFieldBase(
                        hideText: false,
                        controller: _nameController,
                        hintText: "Tên người dùng",
                        prefixIcon: "assets/icons/username.png",
                        errorText: snapshot.hasError ? snapshot.error : null,
                      );
                    }),
                SizedBox(height: 30),
                StreamBuilder(
                    stream: _registerStream.emailStream,
                    builder: (context, snapshot) {
                      return TextFormFieldBase(
                        controller: _emailController,
                        hintText: "Email ID",
                        hideText: false,
                        prefixIcon: "assets/icons/email.png",
                        errorText: snapshot.hasError ? snapshot.error : null,
                      );
                    }),
                SizedBox(height: 30),
                StreamBuilder(
                    stream: _registerStream.passStream,
                    builder: (context, snapshot) {
                      return TextFormFieldBase(
                        controller: _passController,
                        hintText: "Mật khẩu",
                        hideText: obserText,
                        prefixIcon: "assets/icons/password.png",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obserText = !obserText;
                            });
                          },
                          icon: Icon(
                            obserText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        errorText: snapshot.hasError ? snapshot.error : null,
                      );
                    }),
                SizedBox(height: 60),
                ElevatorButtonBase(
                  textButton: "Đăng ký",
                  elevation: 1.0,
                  colorText: Colors.white,
                  pageNavigator: BottomNavigatorBarPage(),
                  primaryColor: 0xFF5B67CA,
                  onPressed: "Reg",
                  emailRegister: _emailController,
                  passwordRegister: _passController,
                  nameUser: _nameController,
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
