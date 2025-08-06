import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_basket_divider.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_cart_item_price.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_cart_sub_total_item_price.dart';

class CartSecondSection extends StatelessWidget {
  const CartSecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDashLine(),
        SizedBox(height: 21),
        CustomCartSubTotalPrice(title: 'Subtotal', subtitle: '36.00'),
        SizedBox(height: 21),
        CustomCartSubTotalPrice(title: 'Shipping Charges', subtitle: '1.50'),
        SizedBox(height: 21),
        CustomCartTotalPrice(),
      ],
    );
  }
}
