import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_add_address.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_address.dart';

class SecondCustomPageViewSection extends StatelessWidget {
  const SecondCustomPageViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Delivery Address',
                style: AppStyle.textBold18.copyWith(
                  color: const Color(0xFF292727),
                ),
              ),
              SizedBox(height: 16),
              CustomAddAddress(),
            ],
          ),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: CustomProductContainerShape(
            height: MediaQuery.sizeOf(context).height * 0.19,
            child: CustomAddress(),
          ),
        ),
      ],
    );
  }
}
