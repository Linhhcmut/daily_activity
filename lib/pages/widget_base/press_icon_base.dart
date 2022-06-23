import 'package:daily/pages/bottom_navigator_page.dart/bottomNavigatorBar_page.dart';
import 'package:daily/pages/widget_base/navigator_page_base.dart';
import 'package:daily/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PressIconBase extends StatelessWidget {
  final String imageIcon;
  final String buttonName;

  PressIconBase({this.imageIcon, this.buttonName});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (buttonName == "Google") {
          var loginGoogle =
              await context.read<LoginProvider>().signInWithGoogle();
          if (loginGoogle) {
            NavigationAnimationPage()
                .navigatorPage(context, BottomNavigatorBarPage());
          }
        } else {
          //continue
        }
      },
      child: Image.asset(imageIcon),
    );
  }
}
