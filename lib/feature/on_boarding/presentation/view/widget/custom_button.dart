import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.title,
    this.onPressed,
    this.width,
    this.style,
    this.height,
    this.color,
  });
  final String title;
  final void Function()? onPressed;
  final double? width, height;
  final TextStyle? style;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? MediaQuery.sizeOf(context).width * .41,
      height: height ?? 50,
      child: TextButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColor.primaryColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: style ?? AppStyle.textMedium16,
        ),
      ),
    );
  }
}
