import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

class CustomHomeIndicator extends StatelessWidget {
  const CustomHomeIndicator({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      animate: true,
      animationDuration: const Duration(milliseconds: 300),
      dotsCount: 4,
      position: currentIndex.toDouble(),
      decorator: DotsDecorator(
        activeSize: const Size(11, 11),
        size: const Size(11, 11),
        shape: OvalBorder(side: const BorderSide(width: 2, color: Colors.grey)),
        color: Colors.white,
        activeColor: AppColor.primaryColor,
      ),
    );
  }
}
