import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

class CustomSelectorIcon extends StatefulWidget {
  const CustomSelectorIcon({super.key});

  @override
  State<CustomSelectorIcon> createState() => _CustomSelectorIconState();
}

class _CustomSelectorIconState extends State<CustomSelectorIcon> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        value: isSelected,
        onChanged: (value) {
          setState(() {
            isSelected = value!;
          });
        },
        shape: const CircleBorder(),
        side: BorderSide(color: Colors.grey),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return Colors.white;
          }
          return Colors.white;
        }),

        checkColor: AppColor.primaryColor,
      ),
    );
  }
}
