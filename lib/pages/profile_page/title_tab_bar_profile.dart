import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleTabBarProfile extends StatelessWidget {
  final String title;
  final int index;
  final Color colorText;

  TitleTabBarProfile({this.title, this.index, this.colorText});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<ProfileProvider>(
        builder: (context, value, child) {
          return GestureDetector(
            onTap: () {
              value.changeData(index);
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                title,
                style: TextStyle(
                  color: colorText,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
