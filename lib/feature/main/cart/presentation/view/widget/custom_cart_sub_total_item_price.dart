import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomCartSubTotalPrice extends StatelessWidget {
  const CustomCartSubTotalPrice({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyle.textRegular16(
            context,
          ).copyWith(color: const Color(0xFF656565)),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$subtitle ',
                style: AppStyle.textBold16(
                  context,
                ).copyWith(color: const Color(0xFF656565)),
              ),
              TextSpan(
                text: 'KD',
                style: AppStyle.textBold12(
                  context,
                ).copyWith(color: const Color(0xFFBEBEBE)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
