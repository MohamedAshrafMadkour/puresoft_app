import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomAddAddress extends StatelessWidget {
  const CustomAddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 51,
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
            'Add New Address',
            style: AppStyle.textBold16(
              context,
            ).copyWith(color: const Color(0xFF4A4A4A)),
          ),
          Icon(Icons.add, color: const Color(0xff656565), size: 36),
        ],
      ),
    );
  }
}
