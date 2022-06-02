import 'dart:developer';

import 'package:daily/pages/edit_profile_page/choose_image_dialogEditProfile.dart';
import 'package:daily/provider/profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class DialogEditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    log("build dialog");
    return Dialog(
      child: Container(
        color: Color(0xffffffff),
        height: 280,
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: 130,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/dialog_background.jpg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 40,
              child: Text(
                "Đổi ảnh đại diện",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Divider(thickness: 1, height: 1),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Container(
                child: Consumer<ProfileProvider>(
                  builder: (context, choose, build) {
                    log("choose image");
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () async {
                            await choose.pickImage(source: ImageSource.gallery);
                            Navigator.pop(context);
                          },
                          child: ChooseImageDialogEditProfile(
                            image: "assets/icons/upload.png",
                            text: "Chọn ảnh từ thiết bị",
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () async {
                            await choose.pickImage(source: ImageSource.camera);
                            Navigator.pop(context);
                          },
                          child: ChooseImageDialogEditProfile(
                            image: "assets/icons/camera.png",
                            text: "Chụp ảnh mới",
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
