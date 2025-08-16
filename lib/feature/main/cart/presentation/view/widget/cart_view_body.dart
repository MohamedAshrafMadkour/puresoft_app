import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/cart_first_section.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/cart_second_Section.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/cart_third_section.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(title: 'Basket'),
        SizedBox(height: 20),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: CustomScrollView(
              slivers: [
                CartFirstSection(),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.1,
                  ),
                ),
                SliverToBoxAdapter(child: CartSecondSection()),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * 0.05,
                  ),
                ),
                SliverToBoxAdapter(child: CartThirdSection()),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
