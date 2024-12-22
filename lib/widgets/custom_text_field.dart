import 'package:dash_board/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:const Color(0xff4EB7F2),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: Styles.styleRegular16(context).copyWith(
          color:const Color(0xffAAAAAA),
        ),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Color(0xffFAFAFA),
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
