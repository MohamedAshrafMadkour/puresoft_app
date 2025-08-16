import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

class CustomStep extends StatelessWidget {
  const CustomStep({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isActive ? AppColor.primaryColor : Color(0xff9F9F9F),
            width: 1,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isActive ? AppColor.primaryColor : Color(0xff9F9F9F),
            ),
          ),
        ),
      ),
    );
  }
}
