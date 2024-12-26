import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/my_card.dart';
import 'package:dash_board/widgets/my_card_section.dart';
import 'package:dash_board/widgets/my_cards_page_view.dart';
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
          child: section2(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: MyCardSection(),
        ),
      ],
    );
  }
}
