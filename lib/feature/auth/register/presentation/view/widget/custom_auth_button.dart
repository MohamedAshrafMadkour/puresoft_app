import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({super.key, required this.title, this.onPressed});
  final String title;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: AppStyle.textMedium16,
        ),
      ),
    );
  }
}
