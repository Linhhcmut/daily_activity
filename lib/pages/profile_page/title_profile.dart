import 'dart:developer';

import 'package:flutter/material.dart';

class TitleProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {},
            child: Container(
              color: Color(0xffFFFFFF),
              width: double.infinity,
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.person),
                        SizedBox(width: 10),
                        Text(
                          "Người dùng",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_right_outlined,
                      color: Colors.black54,
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 1,
            indent: 10,
            endIndent: 10,
          )
        ],
      ),
    );
  }
}
