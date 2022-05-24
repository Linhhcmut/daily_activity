import 'package:daily/provider/change_avatar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserAvatarProfile extends StatelessWidget {
  final double coverHeight = 200;
  final double heightAvatar = 100;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: heightAvatar / 2),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
            height: coverHeight,
            width: double.infinity,
            child: Image.asset(
              "assets/images/background_image.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
              top: coverHeight - heightAvatar / 2,
              child: Consumer<ChangeAvatarProvider>(
                builder: (context, imageUrl, child) {
                  return Container(
                    width: heightAvatar,
                    height: heightAvatar,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color(0xff12175E), width: 1.0),
                      image: DecorationImage(
                        image: AssetImage("${imageUrl.urlAvatar}"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
