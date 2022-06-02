import 'package:flutter/material.dart';

class ChooseImageDialogEditProfile extends StatelessWidget {
  final String image;
  final String text;
  final Future<dynamic> onTab;

  ChooseImageDialogEditProfile({this.image, this.text, this.onTab});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30,
      child: Row(
        children: <Widget>[
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            alignment: Alignment.centerLeft,
            height: 30,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
