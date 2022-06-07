import 'package:daily/pages/widget_base/item_horiz_task.dart';
import 'package:flutter/material.dart';

class ItemListTask extends StatelessWidget {
  final Color color;
  ItemListTask({this.color});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) {
          return ItemHorizontal(
            color: color,
          );
        },
      ),
    );
  }
}
