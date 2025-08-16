import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_divider.dart';
import 'package:puresoft_task/core/widget/custom_fitted_bod.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_check_icon.dart';

class CustomAnyTimeDelivery extends StatelessWidget {
  const CustomAnyTimeDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return Container(
      width: double.infinity,
      height: isLandScape
          ? MediaQuery.sizeOf(context).height * 0.3
          : MediaQuery.sizeOf(context).height * 0.14,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 1),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 26,
          top: 21,
          right: 26,
          bottom: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomFittedBox(
                    child: Text(
                      'Select Delivery Time',
                      style: AppStyle.textBold16(
                        context,
                      ).copyWith(color: AppColor.primaryColor),
                    ),
                  ),
                  CustomCheckIcon(isSelected: (value) {}),
                ],
              ),
            ),
            SizedBox(height: 14),
            CustomFittedBox(child: Text('Select Time')),
            SizedBox(height: 4),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomFittedBox(
                    child: Text(
                      '09 - 15 -2021 ',
                      style: AppStyle.textBold17(context),
                    ),
                  ),
                  CustomFittedBox(
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Color(0xff656565),
                    ),
                  ),
                ],
              ),
            ),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}
