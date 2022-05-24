import 'package:daily/pages/profile_page/user_avatar_profile.dart';
import 'package:daily/provider/change_avatar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
          Align(
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
            ),
          ),
          Positioned(
            top: heightbackground - 130,
            child: Container(
              width: widthScreen,
              height: 230,
              child: Center(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 4.0,
                  child: Container(
                    width: 350,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Color(0xffFFFFFF),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      margin: EdgeInsets.only(top: heightbackground - 270),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Steve Job",
                            style: TextStyle(
                              color: Color(0xff12175E),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            "stevejob@gmail.com",
                            style: TextStyle(
                              color: Color(0xff12175E),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 25),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            children: <Widget>[
                              
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: heightbackground - 170,
            child: Consumer<ChangeAvatarProvider>(
              builder: (context, imageUrl, child) {
                return Container(
                  width: widthScreen,
                  child: Center(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xff12175E),
                          width: 1.0,
                        ),
                        image: DecorationImage(
                          image: AssetImage("${imageUrl.urlAvatar}"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
