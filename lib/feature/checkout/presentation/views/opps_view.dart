import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/opps_view_body.dart';

class OppsView extends StatelessWidget {
  const OppsView({super.key});
  static const routeName = 'opps_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: const OppsViewBody()));
  }
}
