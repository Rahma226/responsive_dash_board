import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, pieTouchResponse) {
            isActive =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            showTitle: false,
            value: 40,
            radius: isActive == 0 ? 60 : 50,
            color: const Color(0xff208BC7),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 25,
            radius: isActive == 1 ? 60 : 50,
            color: const Color(0xff4DB7F2),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 20,
            radius: isActive == 2 ? 60 : 50,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            showTitle: false,
            value: 22,
            radius: isActive == 3 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
