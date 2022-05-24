import 'package:flutter/material.dart';

class NameProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 7),
          Text(
            "Steve Job",
            style: TextStyle(
                color: Color(0xff12175E),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 4),
          Text(
            "stevejob@gmail.com",
            style: TextStyle(
              color: Color(0xff12175E),
              fontSize: 14,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Divider(
              thickness: 1,
              endIndent: 10,
              indent: 10,
            ),
          )
        ],
      ),
    );
  }
}
