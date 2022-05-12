import 'package:flutter/material.dart';

class RowBottomSheetBase extends StatelessWidget {
  final String image;
  final String text;
  final Function onPressed;

  RowBottomSheetBase({this.image, this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Row(
          children: <Widget>[
            SizedBox(width: 30),
            Image.asset(image),
            SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
