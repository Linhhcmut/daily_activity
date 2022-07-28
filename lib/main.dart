import 'dart:developer';

import 'package:daily/pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'package:daily/pages/splash_page/splash_page.dart';
import 'package:daily/provider/login_provider.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:daily/provider/register_provider.dart';
import 'package:daily/repositories/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    UserRepository _userRepository = UserRepository();
    _userRepository.isSignedIn();
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ProfileProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => LoginProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => RegisterProvider(),
        )
      ],
      child: _userRepository.isSignedIn() == true
          ? MaterialApp(
              debugShowCheckedModeBanner: false,
              home: SplashPage(),
            )
          : MaterialApp(
              debugShowCheckedModeBanner: false,
              home: BottomNavigatorBarPage(),
            ),
    );
  }
}
