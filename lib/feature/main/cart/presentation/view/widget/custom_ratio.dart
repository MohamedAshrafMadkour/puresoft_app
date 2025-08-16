import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_fitted_bod.dart';

class CustomRatio extends StatelessWidget {
  const CustomRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      decoration: ShapeDecoration(
        color: const Color(0xFFDF958F),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: CustomFittedBox(
        child: Text(
          'Up to 10% Off',
          textAlign: TextAlign.center,
          style: AppStyle.textSemibold12(context),
        ),
      ),
    );
  }
}
