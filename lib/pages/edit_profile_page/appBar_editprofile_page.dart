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
        "Thông tin",
        style: TextStyle(
          color: Color(0xff858FE9),
          fontSize: 20,
        ),
      ),
      leading: Container(
        alignment: Alignment.center,
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff858FE9),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
