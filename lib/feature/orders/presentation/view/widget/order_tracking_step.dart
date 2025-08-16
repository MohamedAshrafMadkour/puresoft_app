import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/orders/data/model/step_data.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_step.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_order_step_data.dart';

class OrderTrackingStep extends StatefulWidget {
  const OrderTrackingStep({super.key});

  @override
  State<OrderTrackingStep> createState() => _OrderTrackingStepState();
}

class _OrderTrackingStepState extends State<OrderTrackingStep> {
  Color activeColor = Color(0xFF00BB1A);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(StepData.steps.length, (index) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomOrderStep(
              isActive: index >= StepData.steps.length - 3,
              activeColor: activeColor,
              index: index,
            ),
            const SizedBox(width: 12),

            Expanded(child: CustomOrderStepData(index: index)),
          ],
        );
      }),
    );
  }
}
