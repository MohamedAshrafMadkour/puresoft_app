import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
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
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('Seller name', style: AppStyle.textBold19(context)),
              ),
              SizedBox(width: 8),
              SvgPicture.asset(Assets.imagesCongratulation),
            ],
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text('4.5', style: AppStyle.textRegularTitillium14(context)),
          ),
        ],
      ),
    );
  }
}
