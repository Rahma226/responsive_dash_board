import 'package:dash_board/models/item_income_details_model.dart';
import 'package:dash_board/widgets/item_income_details.dart';
import 'package:flutter/material.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const items = [
    ItemIncomeDetailsModel(
        title: 'Design Service', value: '%40', color: Color(0xff208BC7)),
    ItemIncomeDetailsModel(
        title: 'Design Product', value: '%25', color: Color(0xff4DB7F2)),
    ItemIncomeDetailsModel(
        title: 'Product Royalti', value: '%20', color: Color(0xff064060)),
    ItemIncomeDetailsModel(
        title: 'Others', value: '%22', color: Color(0xffE2DECD)),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return ItemIncomeDetails(itemIncomeDetailsModel: items[index]);
      },
    );
  }
}
