import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return Container(
      width: isLandScape
          ? MediaQuery.sizeOf(context).width * 0.1
          : MediaQuery.sizeOf(context).width * 0.2,
      height: isLandScape
          ? MediaQuery.sizeOf(context).height * 0.2
          : MediaQuery.sizeOf(context).height * 0.1,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Assets.imagesLogo, fit: BoxFit.fill),
          SizedBox(height: 5),
          Text('COMPANY LOGO', style: AppStyle.textRegular7(context)),
        ],
      ),
    );
  }
}
