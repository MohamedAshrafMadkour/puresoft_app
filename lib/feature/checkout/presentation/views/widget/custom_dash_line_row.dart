import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_check_out_line.dart';

class CustomDashLineRow extends StatelessWidget {
  const CustomDashLineRow({super.key, required this.count});
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(count, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 3),
          child: CustomCheckOutDashLine(
            index: index == 0 || index == count - 1,
          ),
        );
      }),
    );
  }
}
