import 'dart:async';
import 'package:intl/intl.dart';

class DateTimeStream {
  StreamController _timeController = StreamController();
  Stream get timeController => _timeController.stream;

  void editTime() {
    DateTime now = DateTime.now();
    String day = DateFormat('EEEE').format(now);
    switch (day) {
      case "Monday":
        day = "Thứ 2";
        break;
      case "Tuesday":
        day = "Thứ 3";
        break;
      case "Wednesday":
        day = "Thứ 4";
        break;
      case "Thursday":
        day = "Thứ 5";
        break;
      case "Friday":
        day = "Thứ 6";
        break;
      case "Saturday":
        day = "Thứ 7";
        break;
      case "Sunday":
        day = "Chủ nhật";
        break;
      default:
        day = "";
        break;
    }
    String resultDaytime = "$day, " + DateFormat('dd/MM/yyyy, hh:mm:ss a').format(now);
    _timeController.sink.add(resultDaytime);
  }
}
