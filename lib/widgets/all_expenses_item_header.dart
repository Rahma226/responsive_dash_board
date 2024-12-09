import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding:const EdgeInsets.all(14),
          width: 60,
          height: 60,
          decoration: const ShapeDecoration(
            shape: OvalBorder(),
            color: Color(0xffFAFAFA),
          ),
          child: SvgPicture.asset(image),
        ),
        const Spacer(),
        const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xff064061),
        ),
      ],
    );
  }
}
