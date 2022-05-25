import 'package:daily/provider/change_avatar_provider.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ChangeAvatarProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ProfileProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavigatorBarPage(),
      ),
    );

    // return ChangeNotifierProvider(
    //   create: (_) => ChangeAvatarProvider(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     home: BottomNavigatorBarPage(),
    //   ),
    // );
  }
}
