import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_data.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_tracking_container.dart';

class CustomOrderItem extends StatelessWidget {
  const CustomOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return CustomProductContainerShape(
      height: isLandScape
          ? MediaQuery.sizeOf(context).height * .3
          : MediaQuery.sizeOf(context).height * .12,
      child: CustomOrderItemData(isLandScape: isLandScape),
    );
  }
}

class CustomOrderItemData extends StatelessWidget {
  const CustomOrderItemData({super.key, required this.isLandScape});
  final bool isLandScape;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    Assets.imagesInWay,
                    fit: BoxFit.fill,
                    width: isLandScape
                        ? MediaQuery.sizeOf(context).width * 0.1
                        : MediaQuery.sizeOf(context).width * 0.15,
                  ),
                ),
                SizedBox(width: 20),
                CustomOrderData(),
              ],
            ),
          ),
          CustomOrderTrackingContainer(isLandScape: isLandScape),
        ],
      ),
    );
  }
}
