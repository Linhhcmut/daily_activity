import 'dart:developer';

import 'package:daily/pages/home_page/row_bottom_sheet_base.dart';
import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 230,
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 45,
            alignment: Alignment.center,
            child: Text(
              "Ảnh đại diện",
              style: TextStyle(
                color: Color(0xff12175E),
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  RowBottomSheetBase(
                    onPressed: () {
                      log("1");
                    },
                    image: "assets/images/image_gallery.png",
                    text: "Chọn ảnh từ thiết bị",
                  ),
                  RowBottomSheetBase(
                    onPressed: () {
                      log("2");
                    },
                    image: "assets/images/camera.png",
                    text: "Chụp ảnh mới",
                  ),
                  RowBottomSheetBase(
                    onPressed: () {
                      log("3");
                    },
                    image: "assets/images/user.png",
                    text: "Chọn ảnh đại diện có sẵn",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
