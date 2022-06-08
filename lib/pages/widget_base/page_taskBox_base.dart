import 'package:daily/pages/widget_base/item_ver_task.dart';
import 'package:daily/pages/widget_base/search_base.dart';
import 'package:flutter/material.dart';

class PageTaskBoxBase extends StatelessWidget {
  final Color color;
  final String titleappBar;

  PageTaskBoxBase({this.color, this.titleappBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titleappBar,
          style: TextStyle(
            color: Color(0xff12175E),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff12175E),
            size: 18,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
        child: Column(
          children: <Widget>[
            SearchBase(),
            SizedBox(height: 20),
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
