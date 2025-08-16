import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/tarcking_order_view_body.dart';

class TrackingOrderView extends StatelessWidget {
  const TrackingOrderView({super.key});
  static const routeName = 'tracking_order_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(child: TrackingOrderViewBody()),
    );
  }
}
