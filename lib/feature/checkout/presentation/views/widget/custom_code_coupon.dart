import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_fitted_bod.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

class CustomCodeCoupon extends StatelessWidget {
  const CustomCodeCoupon({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return CustomProductContainerShape(
      height: isLandScape
          ? MediaQuery.sizeOf(context).height * 0.15
          : MediaQuery.sizeOf(context).height * 0.065,
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
            CustomFittedBox(
              child: Text(
                'Do You Have any Coupon Code?',
                style: AppStyle.textRegular16(
                  context,
                ).copyWith(color: const Color(0xFF4A4A4A)),
              ),
            ),
            CustomFittedBox(
              child: CustomButton(
                width: MediaQuery.sizeOf(context).width * 0.24,
                title: 'Apply',
                style: AppStyle.textSemiBold16(context),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
