import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomQuantityItemCart extends StatelessWidget {
  const CustomQuantityItemCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.3,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.remove, color: const Color(0xFF656565)),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '1',
              style: AppStyle.textRegular17(
                context,
              ).copyWith(color: const Color(0xFF656565)),
            ),
          ),
          Icon(Icons.add, color: const Color(0xff656565)),
        ],
      ),
    );
  }
}
