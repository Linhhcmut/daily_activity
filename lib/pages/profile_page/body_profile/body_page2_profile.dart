import 'dart:developer';

import 'package:daily/pages/widget_base.dart/card_task_base.dart';
import 'package:flutter/material.dart';

class Body2Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log("build body profile 2");
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: <Widget>[
            SizedBox(height: 90),
            Container(
              width: double.infinity,
              height: 20,
              child: GestureDetector(
                onTap: (){
                  log("add");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Image.asset("assets/icons/button_add.png"),
                    SizedBox(width: 4),
                    Text(
                      "Thêm",
                      style: TextStyle(
                        color: Color(0xffa1bffa),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return CardTaskBase();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
