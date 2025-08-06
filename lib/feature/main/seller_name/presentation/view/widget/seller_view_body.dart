import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_seller_app_bar.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/custom_details_first_section.dart';

class SellerNameViewBody extends StatelessWidget {
  const SellerNameViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSellerBar(),
        SizedBox(height: 20),
        Expanded(
          child: CustomScrollView(
            slivers: [SliverToBoxAdapter(child: CustomDetailsFirstSection())],
          ),
        ),
      ],
    );
  }
}
