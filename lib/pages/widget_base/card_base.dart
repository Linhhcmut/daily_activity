import 'package:daily/pages/widget_base/tagWidget.dart';
import 'package:flutter/material.dart';

class CardWidgetBase extends StatefulWidget {
  final Color color;
  CardWidgetBase({this.color});
  @override
  State<CardWidgetBase> createState() => _CardWidgetBaseState();
}

class _CardWidgetBaseState extends State<CardWidgetBase> {
  String textShow;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 130,
      child: Card(
        color: widget.color,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              VerticalDivider(
                width: 20,
                thickness: 2.5,
                color: Color(0xff8F99EB),
                indent: 5,
                endIndent: 60,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Nhiệm vụ mới",
                    style: TextStyle(
                      color: Color(0xff2C406E),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // Consumer<ChangeText>(
                  //   builder: (context, text, child) {
                  //     if (text.txtdefault.isEmpty) {
                  //       textShow = "Nhiệm vụ mới";
                  //     } else {
                  //       textShow = text.txtdefault;
                  //     }
                  //     return Text(
                  //       textShow,
                  //       style: TextStyle(
                  //         color: Color(0xff2C406E),
                  //         fontSize: 16,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     );
                  //   },
                  // ),
                  SizedBox(height: 9),
                  Text(
                    "7:00 - 7:15",
                    style: TextStyle(
                      color: Color(0xff9AA8C7),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      TagWiget(
                        nameTag: "Quan trọng",
                        colorBackground: 0xfff5e4e6,
                        colorName: 0xffE88B8C,
                        widthTag: 70,
                      ),
                    ],
                  )
                ],
              ),
              Spacer(),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert_outlined,
                  color: Color(0xff2C406E),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
