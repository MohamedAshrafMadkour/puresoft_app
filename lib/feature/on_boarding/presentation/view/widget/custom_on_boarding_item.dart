import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
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
          child: Text('E Shopping', style: AppStyle.textBold22(context)),
        ),
        SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            'Explore op organic fruits & grab them',
            style: AppStyle.textRegular17(context),
          ),
        ),
      ],
    );
  }
}

class CustomOnBoardingItemLandScape extends StatelessWidget {
  const CustomOnBoardingItemLandScape({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .65,
          child: SvgPicture.asset(
            Assets.imagesOnBoardingImage,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text('E Shopping', style: AppStyle.textBold22(context)),
        ),

        // FittedBox(
        //   fit: BoxFit.scaleDown,
        //   child: Text(
        //     'Explore op organic fruits & grab them',
        //     style: AppStyle.textRegular17(context),
        //   ),
        // ),
      ],
    );
  }
}
