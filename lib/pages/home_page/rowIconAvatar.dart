import 'dart:developer';

import 'package:daily/provider/change_avatar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RowIconAvatarDialogPage extends StatelessWidget {
  final String image1;
  final String image2;
  final String image3;

  RowIconAvatarDialogPage({this.image1, this.image2, this.image3});

  @override
  Widget build(BuildContext context) {
    log("build row Icon Page");
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Consumer<ChangeAvatarProvider>(
          builder: (context, changeAvatar, child) {
            return GestureDetector(
              onTap: () => changeAvatar.changeAvatar(image1, context),
              child: Image.asset(image1),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Consumer<ChangeAvatarProvider>(
            builder: (context, changeAvatar, child) {
              return GestureDetector(
                onTap: () => changeAvatar.changeAvatar(image2, context),
                child: Image.asset(image2),
              );
            },
          ),
        ),
        Consumer<ChangeAvatarProvider>(
          builder: (context, changeAvatar, child) {
            return GestureDetector(
              onTap: () => changeAvatar.changeAvatar(image3, context),
              child: Image.asset(image3),
            );
          },
        ),
      ],
    );
  }
}
