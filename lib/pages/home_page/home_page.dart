import 'dart:async';

import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/home_page/bottom_sheet.dart';
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
    return Padding(
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
                    onTap: () => showModalBottomSheet<void>(
                      context: context,
                      builder: (context) {
                        return BottomSheetPage();
                      },
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
    );
  }
}

// body: Padding(
      //   padding: paddingWithScreen,
      //   child: Container(
      //     child: ListView(
      //       children: <Widget>[
      //         SizedBox(height: 30),
      //         Row(
      //           children: <Widget>[
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: <Widget>[
      //                 Text(
      //                   "Hi, Steven",
      //                   style: TextStyle(
      //                     color: Color(0xff12175E),
      //                     fontSize: 28,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 SizedBox(height: 10),
      //                 StreamBuilder(
      //                   stream: _dateTimeStream.timeController,
      //                   builder: (context, snapshot) {
      //                     switch (snapshot.connectionState) {
      //                       case ConnectionState.waiting:
      //                         return SpinKitThreeBounce(
      //                           color: Color(0xff12175E),
      //                           size: 10,
      //                         );
      //                       case ConnectionState.active:
      //                         return Text("${snapshot.data}");
      //                       case ConnectionState.done:
      //                         return Text("${snapshot.data}");
      //                       default:
      //                         break;
      //                     }
      //                     return Text("Some error ocurred try get Time");
      //                   },
      //                 ),
      //               ],
      //             ),
      //             Spacer(),
      //             Container(
      //               width: 50,
      //               height: 50,
      //               decoration: BoxDecoration(
      //                 shape: BoxShape.circle,
      //                 border: Border.all(
      //                   color: Color(0xff12175E),
      //                   width: 1.0,
      //                 ),
      //               ),
      //               child: GestureDetector(
      //                 onTap: () => showModalBottomSheet<void>(
      //                   context: context,
      //                   builder: (context) {
      //                     return BottomSheetPage();
      //                   },
      //                 ),
      //                 child: ClipOval(
      //                   child: Image.asset(
      //                     "assets/images/avatar1.png",
      //                     fit: BoxFit.fill,
      //                   ),
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ],
      //     ),
      //   ),
      // ),