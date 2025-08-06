import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomOnBoardingItem extends StatelessWidget {
  const CustomOnBoardingItem({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Expanded(
          child: SvgPicture.asset(
            Assets.imagesOnBoardingImage,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('E Shopping', style: AppStyle.textBold22),
        ),
        SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Explore op organic fruits & grab them',
            style: AppStyle.textRegular17,
          ),
        ),
      ],
    );
  }
}
