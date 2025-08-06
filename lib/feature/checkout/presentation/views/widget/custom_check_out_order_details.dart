import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/widget/custom_divider.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_cart_item_price.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_cart_sub_total_item_price.dart';

class CustomCheckoutOrderDetails extends StatelessWidget {
  const CustomCheckoutOrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Order Details',
          style: AppStyle.textBold17.copyWith(color: const Color(0xFF292727)),
        ),
        SizedBox(height: 11),
        CustomCartSubTotalPrice(title: 'Total Items', subtitle: '36.00'),
        SizedBox(height: 11),
        CustomCartSubTotalPrice(title: 'Subtotal', subtitle: '36.00'),
        SizedBox(height: 11),
        CustomCartSubTotalPrice(title: 'Shipping Charges', subtitle: '1.50'),
        SizedBox(height: 8),
        CustomDivider(color: const Color(0xffC1C1C1)),
        SizedBox(height: 11),
        CustomCartTotalPrice(),
      ],
    );
  }
}
