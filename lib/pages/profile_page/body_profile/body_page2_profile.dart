import 'dart:developer';

import 'package:flutter/material.dart';

class Body2Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log("build body profile 2");
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 100),
          Text(
            "2",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
