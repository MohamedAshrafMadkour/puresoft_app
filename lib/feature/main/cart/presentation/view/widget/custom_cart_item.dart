import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_cart_item_data.dart';
import 'package:puresoft_task/feature/main/cart/presentation/view/widget/custom_quantity_and_delete_cart_item.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_logo.dart';

class CustomCartItem extends StatelessWidget {
  const CustomCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return isLandScape
        ? const CustomCartItemLandScape()
        : const CustomCartItemPortia();
  }
}

class CustomCartItemPortia extends StatelessWidget {
  const CustomCartItemPortia({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProductContainerShape(
      height: MediaQuery.sizeOf(context).height * 0.12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: CustomLogo(),
          ),
          SizedBox(width: 22),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomCartItemData(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: CustomQuantityAndDeleteCartItem(),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCartItemLandScape extends StatelessWidget {
  const CustomCartItemLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProductContainerShape(
      height: MediaQuery.sizeOf(context).height * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: CustomLogo(),
          ),
          SizedBox(width: 22),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: CustomCartItemData(),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: CustomQuantityAndDeleteCartItem(),
            ),
          ),
        ],
      ),
    );
  }
}
