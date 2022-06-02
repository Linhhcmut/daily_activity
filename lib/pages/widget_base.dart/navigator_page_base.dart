import 'package:flutter/material.dart';

class NavigationAnimationPage {
  void navigatorPage(
      BuildContext context, Widget pageNavigator) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, animationTime) => pageNavigator,
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, animationTime, child) {
          animation = CurvedAnimation(
            parent: animation,
            curve: Curves.easeInOutQuart,
          );
          return ScaleTransition(
            scale: animation,
            alignment: Alignment.center,
            child: child,
          );
        },
      ),
    );
  }
}
