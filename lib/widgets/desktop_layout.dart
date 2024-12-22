import 'package:dash_board/widgets/all_expenses.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              AllExpenses(),
              SizedBox(
                height: 24,
              ),
              QuickInvoice(),
            ],
          ),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 2, child: Placeholder()),
      ],
    );
  }
}
