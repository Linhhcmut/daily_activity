import 'dart:async';
import 'dart:developer';

import 'package:daily/pages/profile_page/body_profile/card_body_profile.dart';
import 'package:daily/pages/edit_profile_page/edit_profile_page.dart';
import 'package:daily/pages/widget_base.dart/navigator_page_base.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class Body1Profile extends StatefulWidget {
  @override
  State<Body1Profile> createState() => _Body1ProfileState();
}

class _Body1ProfileState extends State<Body1Profile> {
  @override
  void initState() {
    log("init");
    var profileProvider = Provider.of<ProfileProvider>(context, listen: false);
    Future.delayed(Duration.zero, () async {
      profileProvider.getDataCard();
    });
    super.initState();
  }

  FutureOr onGoBack() {
    log("reset");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    log("build body profile 1");
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height: 90),
            Consumer<ProfileProvider>(
              builder: (context, editpage, child) {
                return GestureDetector(
                  onTap: () async {
                    await editpage.editButton();
                    NavigationAnimationPage().navigatorPage(
                      context,
                      EditProfilePage(),
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/icons/button_edit.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Chỉnh sửa",
                          style: TextStyle(
                            color: Color(0xffa1bffa),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: 5),
            Consumer<ProfileProvider>(
              builder: (context, cardItems, child) {
                if (cardItems.listCart.length == 0) {
                  return SpinKitThreeBounce(
                    color: Color(0xff12175E),
                    size: 10,
                  );
                }
                return Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return CardWidgetProfile(
                        nameCard: cardItems.listCart[index].nameCard,
                        title: cardItems.listCart[index].titleCard,
                        content: cardItems.listCart[index].contentCard,
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
