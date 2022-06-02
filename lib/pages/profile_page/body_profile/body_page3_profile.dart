import 'dart:developer';

import 'package:flutter/material.dart';

class Body3Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log("build body profile 3");
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
          Text(
            "3",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
