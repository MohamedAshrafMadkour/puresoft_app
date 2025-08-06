import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/auth/phone/presentation/view/widget/phone_view_body.dart';

class PhoneView extends StatelessWidget {
  const PhoneView({super.key});
  static const routeName = 'phone_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: PhoneViewBody()));
  }
}
