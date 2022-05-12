import 'package:daily/pages/login_page/login_page.dart';
import 'package:daily/pages/register_page/register_page.dart';
import 'package:daily/pages/widget_base.dart/elevator_button_base.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFFFFFF),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 128),
              Container(
                width: 291,
                height: 294,
                child: Image.asset("assets/images/logo.png"),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                child: Column(
                  children: <Widget>[
                    Text(
                      "\"Trước khi bắt đầu, hãy lên kế hoạch cẩn thận.\"",
                      style: TextStyle(fontFamily: "Roboto-Medium"),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 6),
                    Container(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "- Marcus Tullius Cicero -",
                        style: TextStyle(fontFamily: "Roboto-Medium"),
                      ),
                    )
                  ],
                ),
              ),
              ElevatorButtonBase(
                textButton: "Đăng nhập",
                colorText: Colors.white,
                primaryColor: 0xFF5B67CA,
                elevation: 1.0,
                pageNavigator: LoginPage(),
              ),
              SizedBox(height: 10),
              ElevatorButtonBase(
                textButton: "Đăng ký",
                primaryColor: 0xffFFFFFF,
                colorText: Color(0xFF5B67CA),
                elevation: 0.0,
                pageNavigator: RegisterPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
