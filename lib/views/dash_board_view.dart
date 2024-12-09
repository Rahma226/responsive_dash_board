import 'package:dash_board/widgets/adaptive_layout_widget.dart';
import 'package:dash_board/widgets/desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xffF7F9FA),
      body: AdaptiveLayoutWidget(
          mobileLayout: (context) => const SizedBox(),
          tabletLayout: (context) => const SizedBox(),
          desktopLayout: (context) => const DesktopLayout()
          ),
    );
  }
}
