import 'package:daily/pages/widget_base/page_taskBox_base.dart';
import 'package:flutter/material.dart';

class PendingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageTaskBoxBase(
      titleappBar: "Chưa thực hiện",
      color: Color(0xffeef0ff),
    );
  }
}
