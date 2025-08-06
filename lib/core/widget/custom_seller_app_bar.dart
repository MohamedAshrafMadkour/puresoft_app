import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_divider.dart';

class CustomSellerBar extends StatelessWidget {
  const CustomSellerBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Product Name',
                    style: AppStyle.textBold24.copyWith(
                      color: AppColor.primaryColor,
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  SvgPicture.asset(Assets.imagesFavorite, fit: BoxFit.fill),
                  SizedBox(width: 16),
                  InkWell(
                    onTap: () {},
                    child: SvgPicture.asset(Assets.imagesShare),
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
