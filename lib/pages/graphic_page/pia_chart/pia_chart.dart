import 'package:daily/pages/graphic_page/pia_chart/indicator_piaChart.dart';
import 'package:daily/pages/graphic_page/pia_chart/touch_pia_chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PieChartPageState();
}

class PieChartPageState extends State {
  TouchPiaChart _touchPiaChart = TouchPiaChart();
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 10),
          Text(
            "Hôm nay",
            style: TextStyle(
              fontSize: 24,
              color: Color(0xff12175E),
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(width: 15),
              Indicator(
                color: Color(0xff858FE9),
                text: 'Hoàn thành',
                isSquare: true,
              ),
              SizedBox(
                width: 4,
              ),
              Indicator(
                color: Color(0xff7EC8E7),
                text: 'Chưa thực hiện',
                isSquare: true,
              ),
              SizedBox(
                width: 4,
              ),
              Indicator(
                color: Color(0xffE88B8C),
                text: 'Hủy',
                isSquare: true,
              ),
              SizedBox(
                width: 18,
              ),
            ],
          ),
          SizedBox(height: 10),
          Container(
            height: 230,
            width: double.infinity,
            child: AspectRatio(
              aspectRatio: 1,
              child: PieChart(
                PieChartData(
                  pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                    setState(() {
                      if (!event.isInterestedForInteractions ||
                          pieTouchResponse == null ||
                          pieTouchResponse.touchedSection == null) {
                        touchedIndex = -1;
                        return;
                      }
                      touchedIndex =
                          pieTouchResponse.touchedSection.touchedSectionIndex;
                    });
                  }),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  sectionsSpace: 0,
                  centerSpaceRadius: 40,
                  sections: _touchPiaChart.showingSections(
                      touchedIndex: touchedIndex),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
