import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/check_out_view_body.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});
  static const routeName = 'check_out_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: CheckoutViewBody()));
  }
}
