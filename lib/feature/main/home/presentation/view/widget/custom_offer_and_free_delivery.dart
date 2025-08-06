import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_check_icon.dart';

class CustomOffersAndFreeDelivery extends StatelessWidget {
  const CustomOffersAndFreeDelivery({
    super.key,
    required this.title,
    required this.isSelected,
  });
  final String title;
  final ValueChanged<bool> isSelected;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckIcon(isSelected: isSelected),

        Text(title, style: AppStyle.textRegular16),
      ],
    );
  }
}
