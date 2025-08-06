import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/confirm_view_body.dart';

class ConfirmPaymentView extends StatelessWidget {
  const ConfirmPaymentView({super.key});
  static const routeName = 'confirm_payment_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ConfirmPaymentViewBody()));
  }
}
