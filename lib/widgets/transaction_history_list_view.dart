import 'package:dash_board/models/transaction_model.dart';
import 'package:dash_board/widgets/transaction_item.dart';
import 'package:flutter/material.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static const items = [
    TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022 ',
        amount: r'$20,129',
        isWithDrawel: true),
    TransactionModel(
        title: 'Landing Page project',
        date: '13 Apr, 2022 ',
        amount: r'$2,000',
        isWithDrawel: false),
    TransactionModel(
        title: 'Juni Mobile App project',
        date: '13 Apr, 2022 ',
        amount: r'$20,000',
        isWithDrawel: false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return TransactionItem(transactionModel: items[index]);
        });
  }
}
