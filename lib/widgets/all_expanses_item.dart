import 'package:dash_board/models/all_expenses_item_model.dart';
import 'package:dash_board/widgets/active_and_inactive_all_expenses_item.dart';
import 'package:flutter/material.dart';

class AllExpansesItem extends StatelessWidget {
  const AllExpansesItem(
      {super.key, required this.itemModel, required this.isActive});

  final AllExpensesItemModel itemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveAllExpensesItem(itemModel: itemModel)
        : InActiveAllExpensesItem(itemModel: itemModel);
  }
}
