import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomDeliveryRow extends StatelessWidget {
  const CustomDeliveryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(Assets.imagesDelivery),
        SizedBox(width: 2),
        Text(
          ' Delivery Charges : 0.5 KD',
          style: AppStyle.textRegularTitillium14.copyWith(
            color: const Color(0xFF656565),
          ),
        ),
      ],
    );
  }
}
