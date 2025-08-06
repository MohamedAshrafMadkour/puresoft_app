import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/widget/custom_fav_product_data.dart';
import 'package:puresoft_task/feature/main/favorite/presentation/view/widget/custom_icon_close.dart';

class CustomFavoriteProduct extends StatelessWidget {
  const CustomFavoriteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProductContainerShape(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 8, top: 16, bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [CustomFavProductData(), CustomCloseIcon()],
        ),
      ),
    );
  }
}
