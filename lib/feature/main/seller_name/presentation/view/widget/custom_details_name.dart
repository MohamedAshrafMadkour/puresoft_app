import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomDetailsName extends StatelessWidget {
  const CustomDetailsName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Category Name',
          style: AppStyle.textBold16(
            context,
          ).copyWith(color: AppColor.primaryColor),
        ),
        SizedBox(height: 8),
        Text(
          'Product name',
          style: AppStyle.textBold24(
            context,
          ).copyWith(color: const Color(0xFF292727)),
        ),
      ],
    );
  }
}
