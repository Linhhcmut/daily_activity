import 'package:daily/pages/profile_page/title_tab_bar_profile.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CardUserInfoProfile extends StatelessWidget {
  final double heightbackground;
  final double widthScreen;
  CardUserInfoProfile({this.heightbackground, this.widthScreen});

  @override
  Widget build(BuildContext context) {
    double widthContainer = 350;
    return Positioned(
      top: heightbackground - 150,
      child: Container(
        width: widthScreen,
        height: 230,
        child: Center(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 4.0,
            child: Container(
              width: widthContainer,
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                margin: EdgeInsets.only(top: heightbackground - 250),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Consumer<ProfileProvider>(
                      builder: (context, name, child) {
                        return Text(
                          "${name.infoUser.name}",
                          style: TextStyle(
                            color: Color(0xff12175E),
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 4),
                    Consumer<ProfileProvider>(
                      builder: (context, email, child) {
                        return Text(
                          email.infoUser.email,
                          style: TextStyle(
                            color: Color(0xff12175E),
                            fontSize: 14,
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 25),
                    Divider(
                      height: 1,
                      thickness: 1,
                    ),
                    Consumer<ProfileProvider>(
                      builder: (context, color, child) {
                        return Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              TitleTabBarProfile(
                                title: "Thông tin",
                                index: 0,
                                colorText: color.colorPage[0],
                              ),
                              VerticalDivider(width: 1, thickness: 1),
                              TitleTabBarProfile(
                                title: "Sự kiện",
                                index: 1,
                                colorText: color.colorPage[1],
                              ),
                              VerticalDivider(width: 1, thickness: 1),
                              TitleTabBarProfile(
                                title: "Riêng tư",
                                index: 2,
                                colorText: color.colorPage[2],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
