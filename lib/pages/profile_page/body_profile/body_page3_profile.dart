import 'dart:developer';

import 'package:flutter/material.dart';

class Body3Profile extends StatefulWidget {
  @override
  State<Body3Profile> createState() => _Body3ProfileState();
}

class _Body3ProfileState extends State<Body3Profile> {
  bool notiication_sw = false;
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
                  textBase(text: "English"),
                  Icon(
                    Icons.arrow_right,
                    color: Color(0xff12175E),
                  )
                ],
              ),
            ),
            textBase(text: "Đăng xuất"),
            SizedBox(height: 30),
            textBase(text: "Thông báo", fontWeight: FontWeight.bold),
            Divider(thickness: 1),
            SizedBox(height: 15),
            Row(
              children: <Widget>[
                textBase(text: "Bật thông báo"),
                Spacer(),
                Switch(
                  value: notiication_sw,
                  onChanged: (value) {
                    setState(() {
                      notiication_sw = value;
                      log(value.toString());
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
