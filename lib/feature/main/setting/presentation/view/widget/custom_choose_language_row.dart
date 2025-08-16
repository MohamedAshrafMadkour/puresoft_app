import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_check_icon.dart';

class CustomChooseLanguageRow extends StatelessWidget {
  const CustomChooseLanguageRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckIcon(isSelected: (value) {}),
        SizedBox(width: 8),
        SvgPicture.asset(Assets.imagesCountry),
        SizedBox(width: 8),
        Text(
          'العربية',
          style: TextStyle(
            color: const Color(0xFF656565),
            fontSize: 8,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
