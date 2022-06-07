import 'package:flutter/material.dart';

class TagWiget extends StatelessWidget {
  final String nameTag;
  final int colorName;
  final int colorBackground;
  final double widthTag;

  TagWiget({this.colorBackground, this.colorName, this.nameTag, this.widthTag});

// blue
// Color(0xffe4e7f9)
// Color(0xff8F99EB),

// red
// Color(0xffE88B8C)
// Color(0xfff5e4e6),

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Container(
        width: widthTag,
        height: 25,
        color: Color(colorBackground),
        alignment: Alignment.center,
        child: Text(
          "$nameTag",
          style: TextStyle(
            color: Color(colorName),
            fontWeight: FontWeight.w500,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
