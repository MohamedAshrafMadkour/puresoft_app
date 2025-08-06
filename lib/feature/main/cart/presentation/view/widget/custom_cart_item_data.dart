import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomCartItemData extends StatelessWidget {
  const CustomCartItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          'Product name',
          style: AppStyle.textBold16.copyWith(color: Color(0xFF292727)),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text(
              '12.00 KD',
              style: AppStyle.textRegular14.copyWith(
                color: const Color(0xFF656565),
              ),
            ),
            SizedBox(width: 8),
            Text(
              '14.00 KD',
              style: AppStyle.textRegular14.copyWith(
                color: const Color(0xFFD1D1D1),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 7),
          decoration: ShapeDecoration(
            color: const Color(0xFFDF958F),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
          child: Text(
            'Up to 10% Off',
            textAlign: TextAlign.center,
            style: AppStyle.textSemibold12,
          ),
        ),
      ],
    );
  }
}
