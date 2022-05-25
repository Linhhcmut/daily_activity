import 'package:daily/provider/change_avatar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AvatarProfile extends StatelessWidget {
  final double heightbackground;
  final double widthScreen;
  AvatarProfile({this.heightbackground, this.widthScreen});
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: heightbackground - 160,
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
    );
  }
}
