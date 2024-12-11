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
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2024',
        price: r'$20,129'),
    AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$20,129'),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AnimatedScale(
                scale: selectedIndex == index ? 1.05 : 1.0, 
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut, 
                child: AllExpansesItem(
                  isActive: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
