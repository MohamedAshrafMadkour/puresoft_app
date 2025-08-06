import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/seller_view_body.dart';

class SellerNameView extends StatelessWidget {
  const SellerNameView({super.key});
  static const routeName = 'seller_name_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: SellerNameViewBody()));
  }
}
