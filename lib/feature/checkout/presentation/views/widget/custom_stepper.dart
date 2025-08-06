import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_dash_line_row.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_step.dart';

class CustomStepper extends StatelessWidget {
  const CustomStepper({
    super.key,
    required this.index,
    this.onTap,
    required this.isActive,
  });
  final int index;
  final Function()? onTap;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CustomStep(isActive: isActive),
        ),
        Visibility(visible: index != 2, child: CustomDashLineRow(count: 10)),
      ],
    );
  }
}
