import 'package:daily/pages/profile_page/title_profile.dart';
import 'package:flutter/material.dart';

class ListViewTitleProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        itemCount: 50,
        itemBuilder: (context, index) {
          return TitleProfile();
        },
      ),
    );
  }
}
