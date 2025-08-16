import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_action_button.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/check_out_view.dart';

class CartThirdSection extends StatelessWidget {
  const CartThirdSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '4 items in cart',
              style: AppStyle.textRegular16(
                context,
              ).copyWith(color: const Color(0xFF656565)),
            ),
            Text(
              '37.50 KD',
              style: AppStyle.textBold16(
                context,
              ).copyWith(color: const Color(0xFF656565)),
            ),
          ],
        ),
        CustomActionButton(
          width: MediaQuery.sizeOf(context).width * 0.52,
          title: 'Proceed to checkout',
          onPressed: () {
            Navigator.pushNamed(context, CheckoutView.routeName);
          },
        ),
      ],
    );
  }
}
