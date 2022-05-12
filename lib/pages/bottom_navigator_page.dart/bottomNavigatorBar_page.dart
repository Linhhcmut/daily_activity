import 'dart:developer';

import 'package:daily/pages/add_task_page/add_task_page.dart';
import 'package:daily/pages/bottom_navigator_page.dart/materialButton_base.dart';
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
  int currentTab = 0;
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
                children: <Widget>[
                  MaterialButtonBase(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    currentTab: currentTab,
                    indexTab: 0,
                  ),
                  MaterialButtonBase(
                    onPressed: () {
                      setState(() {
                        currentScreen = TaskPage();
                        currentTab = 1;
                      });
                    },
                    currentTab: currentTab,
                    indexTab: 1,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButtonBase(
                    onPressed: () {
                      setState(() {
                        currentScreen = GraphicPage();
                        currentTab = 2;
                      });
                    },
                    currentTab: currentTab,
                    indexTab: 2,
                  ),
                  MaterialButtonBase(
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfilePage();
                        currentTab = 3;
                      });
                    },
                    currentTab: currentTab,
                    indexTab: 3,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
