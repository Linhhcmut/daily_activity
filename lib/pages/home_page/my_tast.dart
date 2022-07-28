import 'package:daily/pages/complete_page/complete_page.dart';
import 'package:daily/pages/onGoing_page/onGoing_page.dart';
import 'package:daily/pages/pending_page/pending_page.dart';
import 'package:daily/pages/recycleBin_page/recycleBin_page.dart';
import 'package:daily/pages/widget_base/navigator_page_base.dart';
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
    return Expanded(
      flex: 2,
      child: StaggeredGridView.countBuilder(
        shrinkWrap: true,
        itemCount: imageList.length,
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              switch (index) {
                case 0:
                  NavigationAnimationPage()
                      .navigatorPage(context, CompletePage(), true);
                  break;
                case 1:
                  NavigationAnimationPage()
                      .navigatorPage(context, PendingPage(), true);
                  break;
                case 2:
                  NavigationAnimationPage()
                      .navigatorPage(context, OnGoingPage(), true);
                  break;
                case 3:
                  NavigationAnimationPage()
                      .navigatorPage(context, RecycleBinPage(), true);
                  break;
              }
            },
            child: Stack(
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
            ),
          );
        },
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(1, index.isEven ? 1 : 0.8),
      ),
    );
  }
}
