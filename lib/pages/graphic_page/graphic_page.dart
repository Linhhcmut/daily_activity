import 'package:daily/contains/padding_contains.dart';
import 'package:daily/pages/graphic_page/colume_chart/colume_chart.dart';
import 'package:daily/pages/graphic_page/pia_chart/pia_chart.dart';
import 'package:flutter/material.dart';

class GraphicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: paddingWithScreen,
          child: ListView(
            children: <Widget>[
              PieChartPage(),
              SizedBox(height: 10),
              BarChartWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
