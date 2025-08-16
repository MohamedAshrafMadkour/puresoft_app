import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_item.dart';

class MyOrderItemList extends StatelessWidget {
  const MyOrderItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: CustomOrderItem(),
        ),
      ),
    );
  }
}
