import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_fitted_bod.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_ratio.dart';

class CustomCartItemData extends StatelessWidget {
  const CustomCartItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomFittedBox(
            child: Text(
              'Product name',
              style: AppStyle.textBold16(
                context,
              ).copyWith(color: Color(0xFF292727)),
            ),
          ),
        ),
        SizedBox(height: 8),
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomFittedBox(
                child: Text(
                  '12.00 KD',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFF656565)),
                ),
              ),
              SizedBox(width: 8),
              CustomFittedBox(
                child: Text(
                  '14.00 KD',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFFD1D1D1)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 16),
        Expanded(child: CustomRatio()),
      ],
    );
  }
}
