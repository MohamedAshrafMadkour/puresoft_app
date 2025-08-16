import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/checkout/data/model/payment_model.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_check_icon.dart';

class CustomPaymentItem extends StatelessWidget {
  const CustomPaymentItem({super.key, required this.paymentModel});
  final PaymentModel paymentModel;
  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return CustomProductContainerShape(
      height: isLandScape
          ? MediaQuery.sizeOf(context).height * 0.12
          : MediaQuery.sizeOf(context).height * 0.07,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 18,
          bottom: 10,
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SvgPicture.asset(paymentModel.image, fit: BoxFit.fill),
                SizedBox(width: 8),
                Text(
                  paymentModel.title,
                  style: AppStyle.textBold16(
                    context,
                  ).copyWith(color: const Color(0xFF292727)),
                ),
              ],
            ),
            CustomCheckIcon(isSelected: (value) {}),
          ],
        ),
      ),
    );
  }
}
