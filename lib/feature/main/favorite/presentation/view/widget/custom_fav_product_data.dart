import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_logo.dart';

class CustomFavProductData extends StatelessWidget {
  const CustomFavProductData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomLogo(),
        SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Product name',
              style: AppStyle.textBold16(
                context,
              ).copyWith(color: Color(0xFF292727)),
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Text(
                  '12.00 KD',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFF656565)),
                ),
                SizedBox(width: 8),
                Text(
                  '14.00 KD',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFFD1D1D1)),
                ),
              ],
            ),
            SizedBox(height: 8),
            Text(
              'Store Name : Store 1',
              style: AppStyle.textBold16(
                context,
              ).copyWith(color: const Color(0xFF292727)),
            ),
          ],
        ),
      ],
    );
  }
}
