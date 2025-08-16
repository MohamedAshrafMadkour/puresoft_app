import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_selector_icon.dart';

class CustomSelectorRow extends StatelessWidget {
  const CustomSelectorRow({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomSelectorIcon(),
        SizedBox(width: 12),
        Text(
          title,
          style: AppStyle.textRegular16(
            context,
          ).copyWith(color: const Color(0xFF656565)),
        ),
      ],
    );
  }
}
