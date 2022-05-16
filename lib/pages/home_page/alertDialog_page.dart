import 'package:daily/pages/home_page/rowIconAvatar.dart';
import 'package:flutter/material.dart';

class AlertDialogHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Ảnh đại diện",
        style: TextStyle(
          color: Color(0xff12175E),
          fontSize: 17,
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RowIconAvatarDialogPage(
            image1: "assets/images/avatar1.png",
            image2: "assets/images/avatar2.png",
            image3: "assets/images/avatar3.png",
          ),
          SizedBox(height: 10),
          RowIconAvatarDialogPage(
            image1: "assets/images/avatar4.png",
            image2: "assets/images/avatar5.png",
            image3: "assets/images/avatar6.png",
          ),
        ],
      ),
    );
  }
}
