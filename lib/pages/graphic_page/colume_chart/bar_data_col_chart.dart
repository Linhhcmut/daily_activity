import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarData {
  List<Color> colorList = [
    Color(0xFFecb206),
    Color(0xFFea0107),
    Color(0xFFa72ca9),
    Color(0xFF5ac3e8),
    Color(0xFFf656bc),
    Color(0xFF121117),
    Color(0xFF1c6c3f),
  ];

  List<double> valuecompleted = [18, 17, 10, 3, 2, 2, 4];

  List<double> valuealltask = [18, 8, 15, 5, 2, 2, 5];

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
