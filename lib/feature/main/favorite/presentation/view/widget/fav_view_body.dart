import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/widget/custom_favorite_product_list.dart';

class FavViewBody extends StatelessWidget {
  const FavViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Favorite'),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 24)),
              CustomFavoriteProductList(),
            ],
          ),
        ),
      ],
    );
  }
}
