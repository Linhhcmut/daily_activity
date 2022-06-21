import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/forgotpass_page/forgotPass.dart';
import 'package:daily/pages/register_page/register_page.dart';
import 'package:daily/pages/widget_base/elevator_button_base.dart';
import 'package:daily/pages/widget_base/have_account_base.dart';
import 'package:daily/pages/widget_base/or_login_with_base.dart';
import 'package:daily/pages/widget_base/social_button_base.dart';
import 'package:daily/pages/widget_base/title_accountPage_base.dart';
import 'package:daily/pages/widget_base/press_text_base.dart';
import 'package:daily/pages/widget_base/textformfield_base.dart';
import 'package:daily/stream/login_stream.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passcontroller = TextEditingController();
  LoginStream _loginStream = LoginStream();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _emailcontroller.addListener(() {
      _loginStream.isValidEmail(_emailcontroller.text);
    });
    _passcontroller.addListener(() {
      _loginStream.isValidPass(_passcontroller.text);
    });
  }

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
                StreamBuilder(
                    stream: _loginStream.emailStream,
                    builder: (context, snapshot) {
                      // log(snapshot.error.toString());
                      return TextFormFieldBase(
                          controller: _emailcontroller,
                          hintText: "Email",
                          prefixIcon: "assets/icons/email.png",
                          hideText: false,
                          errorText: snapshot.hasError ? snapshot.error : null);
                    }),
                SizedBox(height: 30),
                StreamBuilder(
                  stream: _loginStream.passStream,
                  builder: (context, snapshot) {
                    return TextFormFieldBase(
                        controller: _passcontroller,
                        hintText: "Mật khẩu",
                        prefixIcon: "assets/icons/password.png",
                        hideText: true,
                        suffixIcon: Icon(Icons.visibility_off_outlined),
                        errorText: snapshot.hasError ? snapshot.error : null);
                  },
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
                  email: _emailcontroller.text,
                  password: _passcontroller.text,
                  onPressed: "Login",
                  primaryColor: 0xFF5B67CA,
                  textButton: "Đăng nhập",
                  colorText: Colors.white,
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
