import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/widget/custom_favorite_product.dart';

class CustomFavoriteProductList extends StatelessWidget {
  const CustomFavoriteProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
          child: const CustomFavoriteProduct(),
        );
      }),
    );
  }
}
