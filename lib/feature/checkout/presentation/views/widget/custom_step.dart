import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

class CustomStep extends StatelessWidget {
  const CustomStep({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        width: 22,
        height: 22,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isActive ? AppColor.primaryColor : Color(0xff9F9F9F),
            width: 1,
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Container(
            width: 8,
            height: 8,
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
