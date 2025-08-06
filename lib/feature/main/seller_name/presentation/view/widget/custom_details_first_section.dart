import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/custom_details_second_section.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/custom_discount.dart';

class CustomDetailsFirstSection extends StatelessWidget {
  const CustomDetailsFirstSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Stack(
              children: [
                Image.asset(Assets.imagesFruitShopTest),
                Positioned(top: 15, right: 15, child: CustomDiscount()),
              ],
            ),
          ],
        ),

        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomDetailsSecondSection(),
        ),
      ],
    );
  }
}
