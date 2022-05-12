import 'dart:developer';

import 'package:daily/pages/add_task_page/add_task_page.dart';
import 'package:daily/pages/graphic_page/graphic_page.dart';
import 'package:daily/pages/home_page/home_page.dart';
import 'package:daily/pages/profile_page/profile_page.dart';
import 'package:daily/pages/task_page/task_page.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  @override
  State<BottomNavigatorBarPage> createState() =>
      _BottomNavigatorBarPagePageState();
}

class _BottomNavigatorBarPagePageState extends State<BottomNavigatorBarPage> {
  // PageController _pageController = PageController();
  // int _selectedPageIndex = 0;

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     bottomNavigationBar: BottomNavigationBar(
  //       showSelectedLabels: false,
  //       showUnselectedLabels: false,
  //       items: <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
  //         BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
  //         BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
  //         BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
  //       ],
  //       selectedItemColor: Color(0xff5B67CA),
  //       unselectedItemColor: Color(0xffC6CEDD),
  //       currentIndex: _selectedPageIndex,
  //       onTap: onTapped,
  //     ),
  //     body: PageView(
  //       controller: _pageController,
  //       onPageChanged: (index) {
  //         setState(() {
  //           _selectedPageIndex = index;
  //         });
  //       },
  //       children: <Widget>[
  //         HomePage(),
  //         TaskPage(),
  //         GraphicPage(),
  //         ProfilePage()
  //       ],
  //     ),
  //   );
  // }

  // void onTapped(int index) {
  //   setState(() {
  //     _selectedPageIndex = index;
  //   });
  //   _pageController.animateToPage(
  //     index,
  //     duration: Duration(milliseconds: 200),
  //     curve: Curves.linear,
  //   );
  // }
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
    TaskPage(),
    GraphicPage(),
    ProfilePage(),
  ];

  final PageStorageBucket pucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: pucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          log("add");
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      color: currentTab == 0
                          ? Color(0xff5B67CA)
                          : Color(0xffC6CEDD),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = TaskPage();
                        currentTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.task,
                      color: currentTab == 1
                          ? Color(0xff5B67CA)
                          : Color(0xffC6CEDD),
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = GraphicPage();
                        currentTab = 0;
                      });
                    },
                    child: Icon(
                      Icons.graphic_eq,
                      color: currentTab == 0
                          ? Color(0xff5B67CA)
                          : Color(0xffC6CEDD),
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfilePage();
                        currentTab = 1;
                      });
                    },
                    child: Icon(
                      Icons.person,
                      color: currentTab == 1
                          ? Color(0xff5B67CA)
                          : Color(0xffC6CEDD),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
