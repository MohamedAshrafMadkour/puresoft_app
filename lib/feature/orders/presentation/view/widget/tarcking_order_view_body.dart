import 'package:flutter/material.dart';
import 'package:puresoft_task/core/helper/custom_canclation_order_dialog.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_code_text.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/order_tracking_step.dart';

class TrackingOrderViewBody extends StatelessWidget {
  const TrackingOrderViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Order Tracking'),
        const SizedBox(height: 20),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const CustomOrderCodeText(),
                            const SizedBox(height: 10),
                            Text(
                              '3 items - 37.50 KD',
                              style: AppStyle.textRegular18(
                                context,
                              ).copyWith(color: const Color(0xff656565)),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'Payment Method : Cash',
                              style: AppStyle.textRegular18(
                                context,
                              ).copyWith(color: const Color(0xff656565)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      const OrderTrackingStep(),
                      SizedBox(height: 20),
                      CustomButton(
                        title: 'Confirm',
                        onPressed: () {},
                        width: double.infinity,
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        width: double.infinity,
                        title: 'Cancel',
                        onPressed: () {
                          customCancelationOrderDialog(context);
                        },
                        color: const Color(0xFFFF4A4A),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
