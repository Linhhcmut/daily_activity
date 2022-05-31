import 'package:flutter/material.dart';

class DialogEditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        height: 300,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/dialog_background.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text(
                "Đổi ảnh đại diện",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(thickness: 1, height: 1),
            Row(
              children: <Widget>[],
            )
          ],
        ),
      ),
    );
  }
}
