import 'package:daily/pages/task_page/card_Taskpage.dart';
import 'package:flutter/material.dart';

class ItemTodayTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "7:00",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xff2C406E),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CardTaskPage();
                  },
                ),
              ),
            )
          ],
        ),
        Divider(
          height: 30,
          thickness: 1,
          color: Color(0xffE3E8F1),
        ),
      ],
    );
  }
}
