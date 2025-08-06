import 'package:flutter/material.dart';

class CustomCheckOutDashLine extends StatelessWidget {
  const CustomCheckOutDashLine({super.key, required this.index});
  final bool index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: index ? 5 : 8,
      height: 1,
      decoration: BoxDecoration(color: Colors.grey.shade400),
    );
  }
}
