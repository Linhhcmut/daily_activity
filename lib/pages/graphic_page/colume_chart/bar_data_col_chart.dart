import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarData {
  List<Color> colorList = [
    Color(0xFFecb206),
    Color(0xFFa8bd1a),
    Color(0xFF17987b),
    Color(0xFFb87d46),
    Color(0xFF295ab5),
    Color(0xFFea0107),
    Color(0xFFea0107),
  ];

  List<double> valuecompleted = [18, 17, 10, 3, 2, 2, 5];

  List<double> valuealltask = [18, 8, 15, 5, 2, 2, 4];

  BarChartGroupData barGroupData({int index}) {
    return BarChartGroupData(
      x: index,
      barRods: [
        BarChartRodData(
          toY: valuecompleted[index],
          color: colorList[index],
          width: 6,
        ),
        BarChartRodData(
          toY: valuealltask[index],
          color: Color(0xFFCCCCCC),
          width: 6,
        ),
      ],
    );
  }
}
