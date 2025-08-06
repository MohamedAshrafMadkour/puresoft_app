import 'package:flutter/material.dart';

class CustomDashLine extends StatelessWidget {
  const CustomDashLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(40, (index) {
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(height: 2, color: const Color(0xffBFBFBF)),
          ),
        );
      }),
    );
  }
}
