import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_step_text.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_stepper.dart';

class CustomStepperRow extends StatelessWidget {
  const CustomStepperRow({
    super.key,
    required this.pageController,
    required this.currentIndex,
  });
  final PageController pageController;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(3, (index) {
              return CustomStepper(
                isActive: index == currentIndex,
                index: index,
                onTap: () {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInCubic,
                  );
                },
              );
            }),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(3, (index) {
              return CustomStepText(
                isActive: index == currentIndex,
                title: stepper[index],
              );
            }),
          ),
        ),
      ],
    );
  }

  static const List<String> stepper = [
    'Delivery Time',
    'Delivery Address',
    'Payment',
  ];
}
