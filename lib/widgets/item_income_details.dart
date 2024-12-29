import 'package:dash_board/models/item_income_details_model.dart';
import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class ItemIncomeDetails extends StatelessWidget {
  const ItemIncomeDetails({super.key, required this.itemIncomeDetailsModel});
  final ItemIncomeDetailsModel itemIncomeDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemIncomeDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        itemIncomeDetailsModel.title,
        style: Styles.styleRegular16(context),
      ),
      trailing: Text(
        itemIncomeDetailsModel.value,
        style: Styles.styleMedium16(context),
      ),
    );
  }
}
