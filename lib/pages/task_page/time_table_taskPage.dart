import 'dart:developer';

import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';

class TimeTableTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                "Thời gian",
                style: TextStyle(
                  color: Color(0xff12175E),
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Image.asset("assets/icons/calender.png"),
                    SizedBox(width: 5),
                    Text(
                      "August",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff525F77),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 80,
            child: DatePicker(
              DateTime.now().subtract(Duration(days: 3)),
              initialSelectedDate: DateTime.now(),
              selectionColor: Color(0xff5B67CA),
              selectedTextColor: Colors.white,
              dayTextStyle: TextStyle(color: Color(0xff10275A)),
              dateTextStyle: TextStyle(color: Color(0xff10275A)),
              monthTextStyle: TextStyle(color: Color(0xff10275A)),
              daysCount: 7,
              onDateChange: (date) {
                log("select $date");
              },
              locale: "vi_VN",
            ),
          )
        ],
      ),
    );
  }
}
