import 'package:dash_board/utils/size_config.dart';
import 'package:dash_board/widgets/adaptive_layout_widget.dart';
import 'package:dash_board/widgets/custom_drawer.dart';
import 'package:dash_board/widgets/desktop_layout.dart';
import 'package:dash_board/widgets/mobile_layout.dart';
import 'package:dash_board/widgets/tablet_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xffFAFAFA),
              leading: IconButton(
                onPressed: () {
                  scaffoldKey.currentState!.openEndDrawer();
                },
                icon: const Icon(Icons.menu),
              ),
            )
          : null,
      backgroundColor: const Color(0xffF7F9FA),
      drawer: MediaQuery.sizeOf(context).width < SizeConfig.tablet
          ? const CustomDrawer()
          : null,
      body: AdaptiveLayoutWidget(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const Padding(
          padding: EdgeInsets.only(top: 40),
          child: TabletLayout(),
        ),
        desktopLayout: (context) => const Padding(
          padding: EdgeInsets.only(top: 40),
          child: DesktopLayout(),
        ),
      ),
    );
  }
}
