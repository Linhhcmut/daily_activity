import 'package:daily/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavigatorBarPage extends StatefulWidget {
  @override
  State<BottomNavigatorBarPage> createState() => _BottomNavigatorBarPagePageState();
}

class _BottomNavigatorBarPagePageState extends State<BottomNavigatorBarPage> {
  PageController _pageController = PageController();
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        selectedItemColor: Color(0xff5B67CA),
        unselectedItemColor: Color(0xffC6CEDD),
        currentIndex: _selectedPageIndex,
        onTap: onTapped,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedPageIndex = index;
          });
        },
        children: <Widget>[
          HomePage(),
          Text("page $_selectedPageIndex",
              style: TextStyle(color: Colors.black)),
          Text("page $_selectedPageIndex",
              style: TextStyle(color: Colors.black)),
          Text("page $_selectedPageIndex",
              style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }

  void onTapped(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.linear,
    );
  }
}
