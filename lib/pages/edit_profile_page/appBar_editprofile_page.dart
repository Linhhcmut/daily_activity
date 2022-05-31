import 'package:flutter/material.dart';

class AppBarEditProfilePage extends StatelessWidget
    implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        "Sửa thông tin",
        style: TextStyle(
          color: Color(0xff858FE9),
          fontSize: 20,
        ),
      ),
      leading: Container(
        alignment: Alignment.center,
        child: Text(
          "Hủy",
          style: TextStyle(
            color: Color(0xff858FE9),
            fontSize: 14,
          ),
        ),
      ),
      actions: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Text(
            "Lưu",
            style: TextStyle(
              color: Color(0xff858FE9),
              fontSize: 14,
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
