import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/contact_view_body.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});
  static const routeName = 'contact_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ContactViewBody()));
  }
}
