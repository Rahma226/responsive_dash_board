import 'package:dash_board/models/drawer_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = [
    const DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashboard),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.imagesMyTransctions),
    const DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.imagesWalletAccount),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.imagesMyInvestments),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        bool isActive = activeIndex == index;

        return GestureDetector(
          onTap: () {
            if (!isActive) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                color: isActive ? Colors.blue.withOpacity(0.1) : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: DrawerItem(
                drawerItemModel: items[index],
                isActive: isActive,
              ),
            ),
          ),
        );
      },
    );
  }
}
