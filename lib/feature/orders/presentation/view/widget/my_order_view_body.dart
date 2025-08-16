import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/my_order_item_list.dart';

class MyOrdersViewBody extends StatelessWidget {
  const MyOrdersViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'My Orders'),
        SizedBox(height: 25),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(slivers: [MyOrderItemList()]),
          ),
        ),
      ],
    );
  }
}
