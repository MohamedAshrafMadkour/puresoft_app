import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

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
          style: AppStyle.textRegular16.copyWith(
            color: const Color(0xFF656565),
          ),
        ),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '$subtitle ',
                style: AppStyle.textBold16.copyWith(
                  color: const Color(0xFF656565),
                ),
              ),
              TextSpan(
                text: 'KD',
                style: AppStyle.textBold12.copyWith(
                  color: const Color(0xFFBEBEBE),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
