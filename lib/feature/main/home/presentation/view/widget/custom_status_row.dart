import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_dot_circle_avatar.dart';

class CustomStatusRow extends StatelessWidget {
  const CustomStatusRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomDotCircleAvatar(),
            SizedBox(width: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Open',
                style: AppStyle.textRegularTitillium14(
                  context,
                ).copyWith(color: const Color(0xFF00BB1A)),
              ),
            ),
            SizedBox(width: 8),
            CustomDotCircleAvatar(),
            SizedBox(width: 8),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                'Beverages',
                style: AppStyle.textRegularTitillium14(
                  context,
                ).copyWith(color: const Color(0xFF51949F)),
              ),
            ),
          ],
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            FittedBox(
              child: Text('2.5 KM', style: AppStyle.textRegular12(context)),
            ),
            SizedBox(width: 8),
            SvgPicture.asset(Assets.imagesLocation, fit: BoxFit.fill),
          ],
        ),
      ],
    );
  }
}
