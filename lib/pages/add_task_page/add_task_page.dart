import 'dart:developer';
import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/add_task_page/tff_addtask_page.dart';
import 'package:daily/pages/widget_base/tagWidget.dart';
import 'package:flutter/material.dart';

class AddTaskPage extends StatefulWidget {
  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            try {
              Navigator.pop(context);
            } catch (e) {
              log(e.toString());
            }
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Color(0xff858FE9),
            size: 18,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Thêm công việc",
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff858FE9),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: paddingWithScreen,
          child: ListView(
            children: <Widget>[
              TxtFFAddTaskPage(
                label: "Nhiệm vụ:",
              ),
              TxtFFAddTaskPage(
                label: "Ngày:",
              ),
              TxtFFAddTaskPage(
                label: "Thời gian:",
              ),
              TxtFFAddTaskPage(
                label: "Mô tả chi tiết:",
                line: 8,
              ),
              SizedBox(height: 20),
              Text(
                "Thẻ:",
                style: TextStyle(
                  color: Color(0xff858FE9),
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      log("1");
                    },
                    child: TagWiget(
                      nameTag: "Bài tập",
                      widthTag: 70,
                      colorName: 0xff858FE9,
                      colorBackground: 0xffeceaff,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      log("1");
                    },
                    child: TagWiget(
                      nameTag: "Văn phòng",
                      widthTag: 70,
                      colorName: 0xffF0A58E,
                      colorBackground: 0xffffefeb,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      log("2");
                    },
                    child: TagWiget(
                      nameTag: "Việc nhà",
                      widthTag: 70,
                      colorName: 0xffF57C96,
                      colorBackground: 0xffFFE9ED,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      log("3");
                    },
                    child: TagWiget(
                      nameTag: "Sự kiện",
                      widthTag: 70,
                      colorName: 0xff1EC1C3,
                      colorBackground: 0xffD1FEFF,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Tạo công việc",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
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
