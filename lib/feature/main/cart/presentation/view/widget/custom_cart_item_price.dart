import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomCartTotalPrice extends StatelessWidget {
  const CustomCartTotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Bag Total',
          style: AppStyle.textBold16.copyWith(color: AppColor.primaryColor),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '37.50 ',
                style: AppStyle.textBold16.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
              TextSpan(
                text: 'KD',
                style: AppStyle.textBold12.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
