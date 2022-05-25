import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BodyProfile extends StatelessWidget {
  final double heightScreen;
  final double widthScreen;

  BodyProfile({this.heightScreen, this.widthScreen});
  @override
  Widget build(BuildContext context) {
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
              return Column(
                children: <Widget>[
                  SizedBox(height: 100),
                  Text(
                    "Profile ${indexPage.indexPage}",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              );
            } else if (indexPage.indexPage == 2) {
              return Column(
                children: <Widget>[
                  SizedBox(height: 100),
                  Text(
                    "Profile ${indexPage.indexPage}",
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              );
            }
            return Column(
              children: <Widget>[
                SizedBox(height: 100),
                Text(
                  "Profile ${indexPage.indexPage}",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
