import 'package:dash_board/utils/size_config.dart';
import 'package:dash_board/widgets/detailed_income_chart.dart';
import 'package:dash_board/widgets/income_chart.dart';
import 'package:dash_board/widgets/income_details.dart';
import 'package:flutter/material.dart';

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
            padding: EdgeInsets.only(top: 20, bottom: 16, left: 16, right: 16),
            child: DetailedIncomeChart(),
          ))
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
