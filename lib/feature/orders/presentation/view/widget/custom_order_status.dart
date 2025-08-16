import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomOrderStatus extends StatelessWidget {
  const CustomOrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'Status : ',
            style: AppStyle.textRegular16(
              context,
            ).copyWith(color: const Color(0xFF656565)),
          ),
          TextSpan(
            text: 'Delivering',
            style: AppStyle.textRegular16(
              context,
            ).copyWith(color: const Color(0xFFFEC500)),
          ),
        ],
      ),
    );
  }
}
