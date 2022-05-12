import 'dart:async';
import 'dart:developer';
import 'package:daily/contains/padding_contains.dart';
import 'package:daily/stream/date_time_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DateTimeStream _dateTimeStream = DateTimeStream();

  @override
  void initState() {
    Timer.periodic(
        Duration(seconds: 1), (Timer t) => _dateTimeStream.editTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // DateTimeProvider getDateTime = Provider.of<DateTimeProvider>(context);
    log("build outside");
    return Scaffold(
      body: Padding(
        padding: paddingWithScreen,
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30),
              Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Hi, Steven",
                        style: TextStyle(
                          color: Color(0xff12175E),
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
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
                          return Text("Some error ocurred try get Time");
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
                    child: GestureDetector(
                      onTap: () => showModalBottomSheet(
                        context: context,
                        // shape: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.vertical(
                        //     top: Radius.circular(10),
                        //   ),
                        // ),
                        builder: (context) => buildSheet(),
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/avatar1.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSheet() {
    return Container(
      width: double.infinity,
      height: 230,
      color: Colors.grey[200],
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 45,
            alignment: Alignment.center,
            color: Color(0xffe7f2f6),
            child: Text(
              "Ảnh đại diện",
              style: TextStyle(
                color: Color(0xff12175E),
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Divider(
            height: 1,
            thickness: 2,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Image.asset("assets/images/image_gallery.png"),
                      SizedBox(width: 20),
                      Text(
                        "Chọn ảnh từ thiết bị",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Image.asset("assets/images/camera.png"),
                      SizedBox(width: 20),
                      Text(
                        "Chụp ảnh mới",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Image.asset("assets/images/user.png"),
                      SizedBox(width: 20),
                      Text(
                        "Chọn ảnh đại diện có sẵn",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
