import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

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
    return Text(
      title,
      style: TextStyle(
        color: isActive ? AppColor.primaryColor : const Color(0xFF9F9F9F),
        fontSize: 16,
        fontFamily: 'Titillium Web',
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
