import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomSelector extends StatelessWidget {
  const CustomSelector({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.textBold18(
            context,
          ).copyWith(color: const Color(0xFF292727)),
        ),
        Icon(Icons.keyboard_arrow_up_sharp),
      ],
    );
  }
}
