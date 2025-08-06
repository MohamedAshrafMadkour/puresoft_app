import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
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
          children: [
            CustomDotCircleAvatar(),
            SizedBox(width: 8),
            Text(
              'Open',
              style: AppStyle.textRegularTitillium14.copyWith(
                color: const Color(0xFF00BB1A),
              ),
            ),
            SizedBox(width: 8),
            CustomDotCircleAvatar(),
            SizedBox(width: 8),
            Text(
              'Beverages',
              style: AppStyle.textRegularTitillium14.copyWith(
                color: const Color(0xFF51949F),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Text('2.5 KM', style: AppStyle.textRegular12),
            SizedBox(width: 8),
            SvgPicture.asset(Assets.imagesLocation, fit: BoxFit.fill),
          ],
        ),
      ],
    );
  }
}
