import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_areas_container.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_offer_and_delivery_list.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

Future<dynamic> customShowDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'Filter by',
          style: AppStyle.textBold18(
            context,
          ).copyWith(color: const Color(0xFF292727)),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  'Delivered To',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFF858D9A)),
                ),
                SizedBox(width: 16),
                SvgPicture.asset(
                  Assets.imagesDelivery,
                  fit: BoxFit.fill,
                  height: 20,
                ),
              ],
            ),
            SizedBox(height: 16),
            CustomAllAreasContainer(),
            SizedBox(height: 16),
            CustomOffersAndFreeDeliveryList(),
            SizedBox(height: 16),
            CustomButton(
              width: MediaQuery.sizeOf(context).width * .55,
              height: 40,
              title: 'Apply Filter',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                'Close',
                style: TextStyle(
                  color: const Color(0xFF656565),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
