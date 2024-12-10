import 'dart:math';

import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/all_expanses_item.dart';
import 'package:flutter/material.dart';

class AllExpensesItemsList extends StatelessWidget {
  const AllExpensesItemsList({super.key});

  static const List<AllExpensesItemModel> items = [
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

  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((entry) {
        int index = entry.key;
        var item = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
            child: AllExpansesItem(
              itemModel: item,
            ),
          ),
        );
      }).toList(),
    );
  }
}
