import 'dart:developer';
import 'package:daily/pages/profile_page/body_profile/change_laguage.dart';
import 'package:daily/pages/splash_page/splash_page.dart';
import 'package:daily/pages/widget_base/navigator_page_base.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:daily/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Body3Profile extends StatefulWidget {
  @override
  State<Body3Profile> createState() => _Body3ProfileState();
}

class _Body3ProfileState extends State<Body3Profile> {
  bool notiication_sw = false;
  UserRepository _userRepository = UserRepository();
  @override
  Widget build(BuildContext context) {
    log("build body profile 3");
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 100),
            textBase(text: "Chung", fontWeight: FontWeight.bold),
            Divider(thickness: 1),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: <Widget>[
                  textBase(text: "Ngôn ngữ"),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionBuilder: (context, a1, a2, widget) {
                          return Transform.scale(
                            scale: a1.value,
                            child: Opacity(
                              opacity: a1.value,
                              child: ChangeLanguagePage(),
                            ),
                          );
                        },
                        transitionDuration: Duration(milliseconds: 200),
                        barrierDismissible: true,
                        barrierLabel: "",
                        context: context,
                        pageBuilder: (context, animation1, animation2) {
                          return;
                        },
                      );
                    },
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Consumer<ProfileProvider>(
                            builder: (context, language, child) {
                              return textBase(
                                text: language.vietname
                                    ? "Tiếng Việt"
                                    : "English",
                              );
                            },
                          ),
                          Icon(
                            Icons.arrow_right,
                            color: Color(0xff12175E),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () async {
                await _userRepository.signOut();
                NavigationAnimationPage()
                    .navigatorPage(context, SplashPage(), false);
              },
              child: textBase(text: "Đăng xuất"),
            ),
            SizedBox(height: 30),
            textBase(text: "Thông báo", fontWeight: FontWeight.bold),
            Divider(thickness: 1),
            SizedBox(height: 6),
            Row(
              children: <Widget>[
                textBase(text: "Bật thông báo"),
                Spacer(),
                Switch(
                  value: notiication_sw,
                  onChanged: (value) {
                    setState(() {
                      notiication_sw = value;
                    });
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget textBase({String text, FontWeight fontWeight}) {
    return Text(
      text,
      style: TextStyle(
        color: Color(0xff12175E),
        fontSize: 15,
        fontWeight: fontWeight,
      ),
    );
  }
}
