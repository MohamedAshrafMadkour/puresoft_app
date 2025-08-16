import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomOrderTrackingContainer extends StatelessWidget {
  const CustomOrderTrackingContainer({super.key, required this.isLandScape});
  final bool isLandScape;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: const Color(0xFFFEC500),
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
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SvgPicture.asset(
          Assets.imagesTracking,
          fit: BoxFit.fill,
          width: isLandScape
              ? MediaQuery.sizeOf(context).width * 0.065
              : MediaQuery.sizeOf(context).width * 0.05,
        ),
      ),
    );
  }
}
