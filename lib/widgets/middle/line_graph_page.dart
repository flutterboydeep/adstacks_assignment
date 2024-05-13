import 'package:adstacks_assignment/widgets/helper_widget/helper_text.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LineGraphPage extends StatelessWidget {
  LineGraphPage({super.key});
  List<FlSpot> line1Data = [
    FlSpot(2015, 22),
    FlSpot(2015.50, 24),
    // FlSpot(2016, 15),
    FlSpot(2016.20, 12),
    FlSpot(2016.85, 15),

    FlSpot(2017.85, 42),
    // FlSpot(2018, 38),
    FlSpot(2019, 16),
    FlSpot(2020.30, 30),
    // FlSpot(2020, 30),
    FlSpot(2021, 25),
  ];

  List<FlSpot> line2Data = [
    FlSpot(2015, 32),
    FlSpot(2015.50, 38),
    FlSpot(2016.20, 10),
    FlSpot(2017, 10),
    FlSpot(2018, 40),
    FlSpot(2019, 10),
    FlSpot(2020.30, 45),
    FlSpot(2021, 25),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  HelperText(
                    text: " Over All Performance\nThe Years",
                    fontsize: 15,
                    isfontWeightBold: true,
                  ),
                  Row(
                    children: [
                      HelperText(
                          text: "⚫ Pending Done",
                          fontsize: 15,
                          textColor: Colors.orange),
                      SizedBox(width: 20),
                      HelperText(
                          text: "⚫ Pending Done",
                          fontsize: 15,
                          textColor: Colors.deepPurple)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: LineChart(
                LineChartData(
                  lineBarsData: [
                    LineChartBarData(
                      dotData: FlDotData(show: false),
                      spots: line1Data,
                      isCurved: true,
                      barWidth: 3,
                      color: Colors.deepPurple,
                      belowBarData: BarAreaData(show: false),
                    ),
                    LineChartBarData(
                      dotData: FlDotData(show: false),
                      spots: line2Data,
                      isCurved: true,
                      barWidth: 3,
                      color: Colors.orange,
                      belowBarData: BarAreaData(show: false),
                    ),
                  ],
                  maxY: 50.0,
                  minY: 0.0,
                  // maxX: 2021,
                  titlesData: FlTitlesData(
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 28,
                        // getTitlesWidget: (value, meta) {
                        //   switch ((value).toInt()) {
                        //     case 2015:
                        //       // return Text('2015');
                        //       return Text(value.toString(),
                        //           style: TextStyle(fontSize: 10));

                        //     case 2016:
                        //       // return Text('2016');
                        //       return Text(value.toString(),
                        //           style: TextStyle(fontSize: 10));
                        //     case 2017:
                        //       // return Text('2017');
                        //       return Text(value.toString(),
                        //           style: TextStyle(fontSize: 10));
                        //     case 2018:
                        //       // return Text('2018');
                        //       return Text(value.toString(),
                        //           style: TextStyle(fontSize: 10));
                        //     case 2019:
                        //       // return Text('2019');
                        //       return Text(value.toString(),
                        //           style: TextStyle(fontSize: 10));
                        //     case 2020:
                        //       // return Text('2020');
                        //       return Text(value.toString(),
                        //           style: TextStyle(fontSize: 10));
                        //     default:
                        //       return SizedBox();
                        //   }
                        // },
                        getTitlesWidget: (value, meta) {
                          if (value == 2015 ||
                              value == 2016 ||
                              value == 2017 ||
                              value == 2018 ||
                              value == 2019 ||
                              value == 2020) {
                            return Text(value.toString(),
                                style: TextStyle(fontSize: 10));
                          }
                          return SizedBox(); // No label for other values
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 10.0,
                        reservedSize: 40,
                        getTitlesWidget: (value, meta) {
                          return Text(value.toInt().toString());
                        },
                      ),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(
                        reservedSize: 50,
                        showTitles: false,
                      ),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  gridData: FlGridData(
                    show: false,
                    drawHorizontalLine: false,
                    drawVerticalLine: false,
                  ),
                  borderData: FlBorderData(
                    border: Border(
                        left: BorderSide(color: Colors.grey),
                        bottom: BorderSide(color: Colors.grey)),
                  ),

                  lineTouchData: LineTouchData(enabled: true),
                ),
              ),
            ),
          ],
        ),
      ),
      // child: LineChart(

      // ),
    );
  }
}
