import 'package:flutter/material.dart';

class AppBarProfile extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      actions: <Widget> [
        IconButton(
          onPressed: () {},
          icon: Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              Positioned(
                top: 5,
                left: 24.0,
                child: Icon(
                  Icons.brightness_1,
                  color: Colors.red,
                  size: 9.0,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
