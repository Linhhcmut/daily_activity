import 'dart:async';
import 'dart:developer';
import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/home_page/bottom_sheet.dart';
import 'package:daily/pages/home_page/my_tast.dart';
import 'package:daily/pages/home_page/user_info.dart';
import 'package:daily/provider/change_avatar_provider.dart';
import 'package:daily/stream/date_time_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    log("build home page");
    return Padding(
      padding: paddingWithScreen,
      child: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            UserInfoWidget(),
            SizedBox(height: 30),
            MyTaskBoxWidget(),
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
            Card()
          ],
        ),
      ),
    );
  }
}
