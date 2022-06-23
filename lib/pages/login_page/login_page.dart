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
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  LoginStream _loginStream = LoginStream();
  bool obserText;

  @override
  void initState() {
    super.initState();
    obserText = true;
  }

  @override
  void didChangeDependencies() {
    emailcontroller.addListener(() {
      _loginStream.isValidEmail(emailcontroller.text);
    });
    passcontroller.addListener(() {
      _loginStream.isValidPass(passcontroller.text);
    });
    super.didChangeDependencies();
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
                    return TextFormFieldBase(
                        controller: emailcontroller,
                        hintText: "Email",
                        prefixIcon: "assets/icons/email.png",
                        hideText: false,
                        errorText: snapshot.hasError ? snapshot.error : null);
                  },
                ),
                SizedBox(height: 30),
                StreamBuilder(
                  stream: _loginStream.passStream,
                  builder: (context, snapshot) {
                    return TextFormFieldBase(
                      controller: passcontroller,
                      hintText: "Mật khẩu",
                      prefixIcon: "assets/icons/password.png",
                      hideText: obserText,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obserText = !obserText;
                          });
                        },
                        icon: Icon(
                          obserText ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                      errorText: snapshot.hasError ? snapshot.error : null,
                    );
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
                  emailLogin: emailcontroller,
                  passwordLogin: passcontroller,
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
