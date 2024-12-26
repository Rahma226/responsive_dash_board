import 'package:dash_board/widgets/custom_container.dart';
import 'package:dash_board/widgets/my_card_section.dart';
import 'package:dash_board/widgets/transaction_history.dart';
import 'package:flutter/material.dart';

class MyCardAndTransactionSection extends StatelessWidget {
  const MyCardAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child:Column(
        children: [
          MyCardSection(), 
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
       );
  }
}