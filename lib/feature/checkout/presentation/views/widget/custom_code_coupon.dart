import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

class CustomCodeCoupon extends StatelessWidget {
  const CustomCodeCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProductContainerShape(
      height: MediaQuery.sizeOf(context).height * 0.065,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 18,
          bottom: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Do You Have any Coupon Code?',
              style: AppStyle.textRegular16.copyWith(
                color: const Color(0xFF4A4A4A),
              ),
            ),
            CustomButton(
              width: MediaQuery.sizeOf(context).width * 0.24,
              title: 'Apply',
              style: AppStyle.textSemiBold16,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
