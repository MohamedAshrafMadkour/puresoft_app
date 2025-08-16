import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomHeaderField extends StatelessWidget {
  const CustomHeaderField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$text ',
              style: AppStyle.textRegular14(
                context,
              ).copyWith(color: const Color(0xFF858D9A)),
            ),
            TextSpan(
              text: '*',
              style: AppStyle.textRegular14(
                context,
              ).copyWith(color: const Color(0xFFED692E)),
            ),
          ],
        ),
      ),
    );
  }
}
