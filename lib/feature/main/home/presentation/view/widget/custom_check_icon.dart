import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

class CustomCheckIcon extends StatefulWidget {
  const CustomCheckIcon({super.key, required this.isSelected});
  final ValueChanged<bool> isSelected;

  @override
  State<CustomCheckIcon> createState() => _CustomCheckIconState();
}

class _CustomCheckIconState extends State<CustomCheckIcon> {
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
            widget.isSelected(isSelected);
          });
        },
        shape: const CircleBorder(),
        side: isSelected
            ? BorderSide(color: AppColor.primaryColor)
            : const BorderSide(color: AppColor.primaryColor),
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
