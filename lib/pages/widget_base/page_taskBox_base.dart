import 'package:daily/pages/widget_base/item_ver_task.dart';
import 'package:daily/pages/widget_base/search_base.dart';
import 'package:flutter/material.dart';

class PageTaskBoxBase extends StatelessWidget {
  final Color color;
  PageTaskBoxBase({this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SearchWidgetBase(),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Image.asset(
                        "assets/icons/calender.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Tháng 5",
                    style: TextStyle(
                      color: Color(0xff12175E),
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ItemListTask(
              color: color,
            ),
          ],
        ),
      ),
    );
  }
}
