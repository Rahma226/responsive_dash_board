import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/income.dart';
import 'package:dash_board/widgets/my_card_and_transaction_section.dart';
import 'package:dash_board/widgets/section2.dart';
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
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: section2(),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            // SizedBox(
                            //   height: 40,
                            // ),
                            MyCardAndTransactionSection(),
                            SizedBox(
                              height: 24,
                            ),
                            Expanded(child: Income()),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
      ],
    );
  }
}
