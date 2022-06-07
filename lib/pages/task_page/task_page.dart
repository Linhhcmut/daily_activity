import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/widget_base/search_base.dart';
import 'package:daily/pages/task_page/item_today_taskpage.dart';
import 'package:daily/pages/task_page/time_table_taskPage.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatefulWidget {
  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SearchWidgetBase(),
      body: Padding(
        padding: paddingWithScreen,
        child: Container(
          child: Column(
            children: <Widget>[
              TimeTableTaskPage(),
              SizedBox(height: 10),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Hôm nay",
                      style: TextStyle(
                        color: Color(0xff12175E),
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Divider(
                    height: 30,
                    thickness: 1,
                    color: Color(0xffE3E8F1),
                  ),
                  Container(
                    height: 375,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return ItemTodayTaskPage();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
