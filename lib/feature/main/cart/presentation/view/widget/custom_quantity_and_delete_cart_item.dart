import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_quantity_cart_item.dart';

class CustomQuantityAndDeleteCartItem extends StatelessWidget {
  const CustomQuantityAndDeleteCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(Assets.imagesDelete, fit: BoxFit.fill),
        ),
        CustomQuantityItemCart(),
      ],
    );
  }
}
