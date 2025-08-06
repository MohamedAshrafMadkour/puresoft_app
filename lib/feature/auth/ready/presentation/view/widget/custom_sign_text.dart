import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomSignText extends StatelessWidget {
  const CustomSignText({
    super.key,
    required this.title,
    required this.subtitle,
  });
  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: title, style: AppStyle.textRegular18),
          TextSpan(
            text: subtitle,
            style: AppStyle.textRegular18.copyWith(
              decoration: TextDecoration.underline,
              color: const Color(0xFF004D8E),
            ),
          ),
        ],
      ),
    );
  }
}
