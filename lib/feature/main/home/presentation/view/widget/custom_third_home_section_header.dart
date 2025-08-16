import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomThirdHomeSectionHeader extends StatelessWidget {
  const CustomThirdHomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Sellers', style: AppStyle.textBold16(context)),
        Text(
          'Show all',
          style: AppStyle.textRegular18(
            context,
          ).copyWith(color: const Color(0xFF235C95)),
        ),
      ],
    );
  }
}
