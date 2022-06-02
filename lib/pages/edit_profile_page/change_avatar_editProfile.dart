import 'package:daily/pages/edit_profile_page/dialog_profile_page.dart';
import 'package:flutter/material.dart';

class ChangeAvatarEditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 0,
      child: GestureDetector(
        onTap: () {
          showGeneralDialog(
            barrierColor: Colors.black.withOpacity(0.5),
            transitionBuilder: (context, a1, a2, widget) {
              return Transform.scale(
                scale: a1.value,
                child: Opacity(
                  opacity: a1.value,
                  child: DialogEditProfilePage(),
                ),
              );
            },
            transitionDuration: Duration(milliseconds: 200),
            barrierDismissible: true,
            barrierLabel: "",
            context: context,
            pageBuilder: (context, animation1, animation2) {
              return;
            },
          );
        },
        child: Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 1.5),
            color: Color(0xff858FE9),
            image: DecorationImage(
              image: AssetImage("assets/icons/add_photo.png"),
            ),
          ),
        ),
      ),
    );
  }
}
