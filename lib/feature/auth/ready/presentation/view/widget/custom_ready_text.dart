import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'F', style: AppStyle.textBold51),
          TextSpan(text: 'ruit Market', style: AppStyle.textBold42),
        ],
      ),
    );
  }
}
