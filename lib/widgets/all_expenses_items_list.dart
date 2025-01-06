import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/all_expanses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final List<AllExpensesItemModel> items = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2024',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2024',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2024',
      price: r'$20,129',
    ),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AnimatedScale(
              scale: selectedIndex == 0 ? 1.05 : 1.0, 
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: AllExpansesItem(
                isActive: selectedIndex == 0,
                itemModel: items[0],
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AnimatedScale(
              scale: selectedIndex == 1 ? 1.05 : 1.0, 
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: AllExpansesItem(
                isActive: selectedIndex == 1,
                itemModel: items[1],
              ),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AnimatedScale(
              scale: selectedIndex == 2 ? 1.05 : 1.0, 
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
              child: AllExpansesItem(
                isActive: selectedIndex == 2,
                itemModel: items[2],
              ),
            ),
          ),
        ),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
