import 'package:daily/pages/edit_profile_page/appBar_editprofile_page.dart';
import 'package:daily/pages/edit_profile_page/change_avatar_editProfile.dart';
import 'package:daily/pages/edit_profile_page/dialog_profile_page.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatefulWidget {
  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarEditProfilePage(),
      body: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0xff12175E),
                        width: 1.0,
                      ),
                    ),
                    child: ClipOval(
                      child: Consumer<ProfileProvider>(
                        builder: (context, imageUrl, child) {
                          if (imageUrl.image == null) {
                            return Image.asset(
                              "assets/images/avatar1.png",
                              fit: BoxFit.cover,
                            );
                          }
                          return Image.file(
                            imageUrl.image,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                    ),
                  ),
                  ChangeAvatarEditProfilePage(),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Steve Job",
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
