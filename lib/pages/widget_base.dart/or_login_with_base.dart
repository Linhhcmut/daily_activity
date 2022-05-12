import 'package:flutter/material.dart';

class OrLoginWithBase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              thickness: 0.8,
            ),
          ),
          SizedBox(width: 10),
          Text(
            "Hoặc đăng nhập với",
            style: TextStyle(
              color: Color(0xffC6CEDD),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Divider(
              thickness: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
