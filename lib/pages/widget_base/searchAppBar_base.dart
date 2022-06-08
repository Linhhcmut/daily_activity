import 'package:flutter/material.dart';

class SearchAppBarBase extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(100);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      // automaticallyImplyLeading: false,
      title: Container(
        decoration: BoxDecoration(
          color: Color(0xffF6F6F6),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 15),
            hintText: "Tìm kiếm ...",
            hintStyle: TextStyle(
              color: Color(0xffCED0E7),
              fontSize: 16,
            ),
            border: InputBorder.none,
            prefixIcon: ImageIcon(
              AssetImage("assets/icons/search_icon.png"),
              size: 20,
              color: Color(0xffB0B5DD),
            ),
            suffixIcon: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage("assets/icons/cancel_icon.png"),
                size: 16,
                color: Color(0xffB0B5DD),
              ),
            ),
          ),
          style: TextStyle(color: Color(0xff12175E), fontSize: 16),
        ),
      ),
    );
  }
}
