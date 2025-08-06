import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomDiscount extends StatelessWidget {
  const CustomDiscount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Text(
        '10% Off Discount',
        textAlign: TextAlign.center,
        style: AppStyle.textRegular16.copyWith(color: const Color(0xFF656565)),
      ),
    );
  }
}
