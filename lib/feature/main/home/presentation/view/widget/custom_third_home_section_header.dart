import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomThirdHomeSectionHeader extends StatelessWidget {
  const CustomThirdHomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Sellers', style: AppStyle.textBold16),
        Text(
          'Show all',
          style: AppStyle.textRegular18.copyWith(
            color: const Color(0xFF235C95),
          ),
        ),
      ],
    );
  }
}
