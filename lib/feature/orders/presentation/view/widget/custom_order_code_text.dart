import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomOrderCodeText extends StatelessWidget {
  const CustomOrderCodeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Your Order Code: ',
            style: AppStyle.textRegular18(
              context,
            ).copyWith(color: Color(0xff656565)),
          ),
          TextSpan(
            text: '#882610',
            style: AppStyle.textBold18(
              context,
            ).copyWith(color: Color(0xff656565)),
          ),
        ],
      ),
    );
  }
}
