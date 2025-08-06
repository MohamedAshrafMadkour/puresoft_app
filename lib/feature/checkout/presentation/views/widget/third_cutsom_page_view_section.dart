import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/feature/checkout/data/model/payment_model.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_check_out_order_details.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_code_coupon.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_payment_item.dart';

class ThirdCustomPageViewSection extends StatelessWidget {
  const ThirdCustomPageViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Coupon Code',
            style: AppStyle.textBold18.copyWith(color: const Color(0xFF292727)),
          ),
          SizedBox(height: 15),
          CustomCodeCoupon(),
          SizedBox(height: 15),
          CustomCheckoutOrderDetails(),
          SizedBox(height: 22),
          Column(
            children: PaymentModel.paymentList
                .asMap()
                .entries
                .map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(bottom: 24),
                    child: CustomPaymentItem(paymentModel: e.value),
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
