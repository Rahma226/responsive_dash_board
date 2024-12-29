import 'package:dash_board/widgets/income.dart';
import 'package:dash_board/widgets/my_card_and_transaction_section.dart';
import 'package:dash_board/widgets/section2.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          section2(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionSection(),
          SizedBox(
            height: 24,
          ),
          Income(),
        ],
      ),
    );
  }
}
