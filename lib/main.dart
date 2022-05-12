import 'package:flutter/material.dart';
import 'pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'pages/splash_page/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigatorBarPage(),
    );
  }
}
