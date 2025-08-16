import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/orders/data/model/step_data.dart';

class CustomOrderStepData extends StatelessWidget {
  const CustomOrderStepData({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            StepData.steps[index].title,
            style: AppStyle.textBold21(
              context,
            ).copyWith(color: const Color(0xFF292727)),
          ),
          const SizedBox(height: 4),
          Text(
            StepData.steps[index].subtitle,
            style: AppStyle.textRegular18(
              context,
            ).copyWith(color: const Color(0xFF656565)),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
