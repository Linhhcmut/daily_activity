import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AvatarProfile extends StatefulWidget {
  final double heightbackground;
  final double widthScreen;
  AvatarProfile({this.heightbackground, this.widthScreen});

  @override
  State<AvatarProfile> createState() => _AvatarProfileState();
}

class _AvatarProfileState extends State<AvatarProfile> {
  String newPathImage;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.heightbackground - 180,
      child: Consumer<ProfileProvider>(
        builder: (context, imageUrl, child) {
          return Container(
            width: widget.widthScreen,
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
                    image: imageUrl.imageSave == null
                        ? AssetImage("assets/images/avatar1.png")
                        : FileImage(imageUrl.imageSave),
                    fit: BoxFit.cover,
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
