import 'package:dash_board/views/dash_board_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DashBoard());
}

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashBoardView(),
    );
  }
}