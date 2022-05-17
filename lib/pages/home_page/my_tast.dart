import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyTaskBoxWidget extends StatefulWidget {
  @override
  State<MyTaskBoxWidget> createState() => _MyTaskBoxWidgetState();
}

class _MyTaskBoxWidgetState extends State<MyTaskBoxWidget> {
  List<String> imageList = [
    "assets/images/dashboard_home.png",
    "assets/images/dashboard_pending.png",
    "assets/images/dashboard_going.png",
    "assets/images/dashboard_cancel.png",
  ];

  List<String> textList = [
    "Hoàn thành",
    "Chưa thực hiện",
    "Đang thực hiện",
    "Thùng rác",
  ];

  List<Color> colorTextList = [
    Color(0xff12175E),
    Color(0xffFFFFFF),
    Color(0xff12175E),
    Color(0xffFFFFFF),
  ];

  List<String> textnumberList = [
    "86",
    "15",
    "15",
    "67",
  ];

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      shrinkWrap: true,
      itemCount: imageList.length,
      crossAxisCount: 2,
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      itemBuilder: (context, index) {
        return Stack(
          children: <Widget>[
            Image.asset("${imageList[index]}"),
            Positioned(
              bottom: 60,
              left: 20,
              child: Text(
                "${textList[index]}",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: colorTextList[index],
                ),
              ),
            ),
            Positioned(
              bottom: 25,
              left: 20,
              child: Text(
                "${textnumberList[index]}",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: colorTextList[index],
                ),
              ),
            ),
          ],
        );
      },
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(1, index.isEven ? 1 : 0.8),
    );
  }
}
