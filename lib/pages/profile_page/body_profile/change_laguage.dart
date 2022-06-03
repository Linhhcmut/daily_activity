import 'dart:developer';

import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeLanguagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        alignment: Alignment.topCenter,
        width: 200,
        height: 130,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Consumer<ProfileProvider>(
              builder: (context, language, child) {
                return Column(
                  children: <Widget>[
                    SizedBox(height: 10),
                    textBase(
                      text: "Ngôn ngữ",
                      size: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            await language.changeLanguage(true);
                            Navigator.pop(context);
                          },
                          child: textBase(text: "Tiếng Việt", size: 16),
                        ),
                        Spacer(),
                        language.vietname
                            ? Container(
                                width: 20,
                                height: 20,
                                child:
                                    Image.asset("assets/icons/tick_icon.png"),
                              )
                            : Container(),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () async {
                            await language.changeLanguage(false);
                            Navigator.pop(context);
                          },
                          child: textBase(text: "Tiếng Anh", size: 16),
                        ),
                        Spacer(),
                        language.vietname
                            ? Container()
                            : Container(
                                width: 20,
                                height: 20,
                                child:
                                    Image.asset("assets/icons/tick_icon.png"),
                              )
                      ],
                    ),
                  ],
                );
              },
            )),
      ),
    );
  }

  Widget textBase({String text, double size, FontWeight fontWeight}) {
    return Text(
      text,
      style: TextStyle(
          color: Color(0xff12175E), fontSize: size, fontWeight: fontWeight),
    );
  }
}
