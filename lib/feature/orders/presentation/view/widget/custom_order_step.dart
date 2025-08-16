import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/orders/data/model/step_data.dart';

class CustomOrderStep extends StatelessWidget {
  const CustomOrderStep({
    super.key,
    required this.isActive,
    required this.activeColor,
    required this.index,
  });

  final bool isActive;
  final int index;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isActive ? activeColor : Colors.white,
            border: Border.all(color: activeColor, width: 2),
            shape: BoxShape.circle,
          ),
        ),

        Visibility(
          visible: index != StepData.steps.length - 1,
          child: Container(width: 2, height: 60, color: activeColor),
        ),
      ],
    );
  }
}
