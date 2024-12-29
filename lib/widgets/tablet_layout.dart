import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/mobile_layout.dart';
import 'package:flutter/material.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

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
          child: MobileLayout(),
        ),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}

