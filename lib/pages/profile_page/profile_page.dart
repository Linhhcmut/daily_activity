import 'package:daily/pages/profile_page/avatar_profile.dart';
import 'package:daily/pages/profile_page/body_profile.dart';
import 'package:daily/pages/profile_page/card_info_user_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double heightbackground = 300;
    final double widthScreen = MediaQuery.of(context).size.width;
    final double heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: heightbackground,
            width: double.infinity,
            child: Image.asset(
              "assets/images/background_image.jpg",
              fit: BoxFit.fill,
            ),
          ),
          BodyProfile(
            widthScreen: widthScreen,
            heightScreen: heightScreen,
          ),
          CardUserInfoProfile(
            heightbackground: heightbackground,
            widthScreen: widthScreen,
          ),
          AvatarProfile(
            heightbackground: heightbackground,
            widthScreen: widthScreen,
          ),
        ],
      ),
    );
  }
}
