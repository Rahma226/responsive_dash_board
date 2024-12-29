import 'package:dash_board/widgets/custom_container.dart';
import 'package:dash_board/widgets/income_chart.dart';
import 'package:dash_board/widgets/income_details.dart';
import 'package:dash_board/widgets/income_header.dart';
import 'package:flutter/material.dart';

class Income extends StatelessWidget {
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          IncomeHeader(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          )
        ],
      ),
    );
  }
}
