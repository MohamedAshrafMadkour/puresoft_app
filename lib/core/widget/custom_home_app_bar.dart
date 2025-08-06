import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/helper/custom_show_dialog.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_divider.dart';

class CustomHomeBar extends StatelessWidget {
  const CustomHomeBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppStyle.textBold24.copyWith(
                  color: AppColor.primaryColor,
                ),
              ),

              Row(
                children: [
                  SvgPicture.asset(Assets.imagesSearch),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {
                      customShowDialog(context);
                    },
                    child: SvgPicture.asset(Assets.imagesFiliter),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 4),
        CustomDivider(),
      ],
    );
  }
}
