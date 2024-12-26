import 'package:dash_board/models/transaction_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xffFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title: Text(
          transactionModel.title,
          style: Styles.styleSemiBold16(context),
        ),
        subtitle: Text(
          transactionModel.date,
          style: Styles.styleRegular16(context).copyWith(
            color:const Color(0xffAAAAAA)
          ),
        ),
        trailing: Text(
          transactionModel.amount,
          style: Styles.styleSemiBold20(context).copyWith(
              color: transactionModel.isWithDrawel
                  ? const Color(0xffF3735E)
                  : const Color(0xff7DD97B),),
        ),
      ),
    );
  }
}
