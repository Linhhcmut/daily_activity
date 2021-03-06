import 'dart:async';
import 'package:daily/provider/profile_provider.dart';
import 'package:daily/stream/date_time_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class UserInfoWidget extends StatefulWidget {
  @override
  State<UserInfoWidget> createState() => _UserInfoWidgetState();
}

class _UserInfoWidgetState extends State<UserInfoWidget> {
  DateTimeStream _dateTimeStream = DateTimeStream();

  @override
  void initState() {
    Future.delayed(Duration.zero, () async {
      Provider.of<ProfileProvider>(context, listen: false).getFirstName();
    });
    Timer.periodic(
        Duration(seconds: 1), (Timer t) => _dateTimeStream.editTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Consumer<ProfileProvider>(
              builder: (context, name, child) {
                return Text(
                  "Hi, ${name.firstname}",
                  style: TextStyle(
                    color: Color(0xff12175E),
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            StreamBuilder(
              stream: _dateTimeStream.timeController,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting:
                    return SpinKitThreeBounce(
                      color: Color(0xff12175E),
                      size: 10,
                    );
                  case ConnectionState.active:
                    return Text("${snapshot.data}");
                  case ConnectionState.done:
                    return Text("${snapshot.data}");
                  default:
                    break;
                }
                return Text("Ch????...");
              },
            ),
          ],
        ),
        Spacer(),
        Container(
          width: 50,
          height: 50,
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
                if (imageUrl.imageSave == null) {
                  return Image.asset(
                    "assets/images/avatar1.png",
                    fit: BoxFit.cover,
                  );
                }
                return Image.file(
                  imageUrl.imageSave,
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
