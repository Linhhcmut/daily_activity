import 'package:flutter/material.dart';

class AddTaskPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff10275A),
            size: 18,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Thêm công việc",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff10275A),
          ),
        ),
      ),
      body: Center(
        child: Text("Add task page"),
      ),
    );
  }
}
