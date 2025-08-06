import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_cart_item.dart';

class CustomCartItemList extends StatelessWidget {
  const CustomCartItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 3,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CustomCartItem(),
        ),
      ),
    );
  }
}
