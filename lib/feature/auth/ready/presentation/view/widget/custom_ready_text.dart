import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomMainText extends StatelessWidget {
  const CustomMainText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'F', style: AppStyle.textBold51(context)),
          TextSpan(text: 'ruit Market', style: AppStyle.textBold42(context)),
        ],
      ),
    );
  }
}
