import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_fitted_bod.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_dot_circle_avatar.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_status.dart';

class CustomOrderData extends StatelessWidget {
  const CustomOrderData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: CustomFittedBox(
            child: Text(
              '#243188 - 37 KD',
              style: AppStyle.textBold18(
                context,
              ).copyWith(color: const Color(0xFF292727)),
            ),
          ),
        ),
        SizedBox(height: 4),
        Expanded(
          child: Row(
            children: [
              CustomFittedBox(
                child: Text(
                  '9 Sep',
                  style: AppStyle.textRegular16(
                    context,
                  ).copyWith(color: const Color(0xFF656565)),
                ),
              ),
              SizedBox(width: 10),
              Align(
                alignment: Alignment.topCenter,
                child: CustomDotCircleAvatar(
                  radius: 2,
                  color: const Color(0xff656565),
                ),
              ),
              SizedBox(width: 10),
              CustomFittedBox(
                child: Text(
                  '4 items',
                  style: AppStyle.textRegular16(
                    context,
                  ).copyWith(color: const Color(0xFF656565)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        CustomOrderStatus(),
      ],
    );
  }
}
