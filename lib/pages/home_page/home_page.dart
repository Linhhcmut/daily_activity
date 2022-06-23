import 'dart:developer';
import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/widget_base/card_base.dart';
import 'package:daily/pages/home_page/my_tast.dart';
import 'package:daily/pages/home_page/user_info.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    log("build home page");
    return Scaffold(
      body: Padding(
        padding: paddingWithScreen,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30),
            UserInfoWidget(),
            SizedBox(height: 5),
            MyTaskBoxWidget(),
            SizedBox(height: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  "Công việc",
                  style: TextStyle(
                    color: Color(0xff12175E),
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "Thêm",
                  style: TextStyle(
                    fontSize: 13,
                    color: Color(0xff12175E),
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return CardWidgetBase();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
