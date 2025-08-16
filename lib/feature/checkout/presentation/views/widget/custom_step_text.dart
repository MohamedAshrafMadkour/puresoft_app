import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_fitted_bod.dart';

class CustomStepText extends StatelessWidget {
  const CustomStepText({
    super.key,
    required this.title,
    required this.isActive,
  });
  final String title;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return CustomFittedBox(
      child: Text(
        title,
        style: AppStyle.textRegular16(context).copyWith(
          color: isActive ? AppColor.primaryColor : const Color(0xFF9F9F9F),
        ),
      ),
    );
  }
}
