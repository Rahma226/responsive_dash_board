import 'package:dash_board/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int isActive = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getChartData()));
  }

  PieChartData getChartData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (p0, p1) {
            isActive = p1?.touchedSection?.touchedSectionIndex ?? -1;
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            titlePositionPercentageOffset: isActive == 0 ? 1.5 : null,
            titleStyle: Styles.styleMedium16(context)
                .copyWith(color: isActive == 0 ? null : Colors.white),
            title: isActive == 0 ? 'Design Service' : '40%',
            value: 40,
            radius: isActive == 0 ? 60 : 50,
            color: const Color(0xff208BC7),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActive == 1 ? 2.2 : null,
            titleStyle: Styles.styleMedium16(context)
                .copyWith(color: isActive == 1 ? null : Colors.white),
            title: isActive == 1 ? 'Design Product' : '25%',
            value: 25,
            radius: isActive == 1 ? 60 : 50,
            color: const Color(0xff4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActive == 2 ? 1.4 : null,
            titleStyle: Styles.styleMedium16(context)
                .copyWith(color: isActive == 2 ? null : Colors.white),
            title: isActive == 2 ? 'Product Royalti' : '20%',
            value: 20,
            radius: isActive == 2 ? 60 : 50,
            color: const Color(0xff064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: isActive == 3 ? 1.4 : null,
            titleStyle: Styles.styleMedium16(context)
                .copyWith(color: isActive == 3 ? null : Colors.white),
            title: isActive == 3 ? 'Others' : '22%',
            value: 22,
            radius: isActive == 3 ? 60 : 50,
            color: const Color(0xffE2DECD),
          ),
        ]);
  }
}
