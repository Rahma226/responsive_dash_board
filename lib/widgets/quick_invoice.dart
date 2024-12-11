import 'package:dash_board/widgets/custom_container.dart';
import 'package:dash_board/widgets/latest_transaction.dart';
import 'package:dash_board/widgets/quick_invoice_header.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGroundContainer(
      child: Column(
        children: [
          QuickInvoiceHeader(),
          LatestTransaction(),
        ],
      ),  
      );
  }
}