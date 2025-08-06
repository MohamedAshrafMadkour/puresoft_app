import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

class CustomDotsIndicator extends StatelessWidget {
  const CustomDotsIndicator({super.key, required this.currentPage});

  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: currentPage.toDouble(),
      animate: true,

      animationDuration: const Duration(milliseconds: 300),
      decorator: DotsDecorator(
        activeSize: const Size(11, 11),
        size: const Size(11, 11),
        shape: OvalBorder(side: const BorderSide(width: 1, color: Colors.grey)),
        color: Colors.white,
        activeColor: AppColor.primaryColor,
      ),
    );
  }
}
