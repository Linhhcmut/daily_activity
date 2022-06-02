import 'dart:developer';

import 'package:daily/pages/profile_page/body_profile/body_page1_profile.dart';
import 'package:daily/pages/profile_page/body_profile/body_page2_profile.dart';
import 'package:daily/pages/profile_page/body_profile/body_page3_profile.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyProfile extends StatelessWidget {
  final double heightScreen;
  final double widthScreen;

  BodyProfile({this.heightScreen, this.widthScreen});
  @override
  Widget build(BuildContext context) {
    log("body page");
    return Align(
      alignment: FractionalOffset.bottomCenter,
      child: Container(
        height: heightScreen - 341,
        width: widthScreen,
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Consumer<ProfileProvider>(
          builder: (context, indexPage, child) {
            if (indexPage.indexPage == 1) {
              return Body2Profile();
            } else if (indexPage.indexPage == 2) {
              return Body3Profile();
            }
            return Body1Profile();
          },
        ),
      ),
    );
  }
}
