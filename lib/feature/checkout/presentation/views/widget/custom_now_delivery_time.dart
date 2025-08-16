import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_check_icon.dart';

class CustomNowDeliveryTime extends StatelessWidget {
  const CustomNowDeliveryTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            'Now',
            style: AppStyle.textBold16(
              context,
            ).copyWith(color: const Color(0xFF292727)),
          ),
          CustomCheckIcon(isSelected: (value) {}),
        ],
      ),
    );
  }
}
