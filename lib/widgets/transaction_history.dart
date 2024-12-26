import 'package:dash_board/utils/styles.dart';
import 'package:dash_board/widgets/transaction_history_header.dart';
import 'package:dash_board/widgets/transaction_history_list_view.dart';
import 'package:flutter/material.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const transactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2024',
          style: Styles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
       const TransactionHistoryListView(),
      ],
    );
  }
}
