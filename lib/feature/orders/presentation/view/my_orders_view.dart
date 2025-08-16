import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/my_order_view_body.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});
  static const routeName = 'my_orders_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const MyOrdersViewBody()));
  }
}
