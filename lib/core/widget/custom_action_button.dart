import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.title,
    this.onPressed,
    this.width,
  });
  final String title;
  final void Function()? onPressed;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width * .41,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
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
