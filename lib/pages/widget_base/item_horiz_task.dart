import 'package:daily/pages/widget_base/card_base.dart';
import 'package:flutter/material.dart';

class ItemHorizontal extends StatelessWidget {
  final Color color;
  ItemHorizontal({this.color});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20),
        Divider(thickness: 1),
        Text(
          "1/5/2022",
          style: TextStyle(
            color: Color(0xff12175E),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 6),
        Row(
          children: <Widget>[
            Expanded(
              child: Container(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CardWidgetBase(
                      color: color,
                    );
                  },
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
