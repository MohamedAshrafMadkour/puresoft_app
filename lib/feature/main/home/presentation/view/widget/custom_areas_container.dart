import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomAllAreasContainer extends StatelessWidget {
  const CustomAllAreasContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      height: 43,
      padding: const EdgeInsets.only(top: 10, left: 10, right: 18, bottom: 10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
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
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,

        children: [
          SvgPicture.asset(Assets.imagesArrowDown, fit: BoxFit.fill),
          SizedBox(width: 10),
          Text(
            'All Areas',
            style: AppStyle.textRegular14.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
