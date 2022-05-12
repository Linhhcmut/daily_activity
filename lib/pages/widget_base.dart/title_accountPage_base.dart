import 'package:flutter/material.dart';

class TitleTextAccountPage extends StatelessWidget {
  final String text;
  TitleTextAccountPage({this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 100, 0, 60),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: Color(0xFF5B67CA),
        ),
      ),
    );
  }
}
