import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class CustomNameRow extends StatelessWidget {
  const CustomNameRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text('Seller name', style: AppStyle.textBold19),
              SizedBox(width: 8),
              SvgPicture.asset(Assets.imagesCongratulation),
            ],
          ),
          Text('4.5', style: AppStyle.textRegularTitillium14),
        ],
      ),
    );
  }
}
