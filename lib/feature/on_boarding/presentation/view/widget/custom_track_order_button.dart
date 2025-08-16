import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomTrackOrderButton extends StatelessWidget {
  const CustomTrackOrderButton({super.key, this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: TextButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            side: BorderSide(color: AppColor.primaryColor),
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          'Track Order',
          style: AppStyle.textBold18(
            context,
          ).copyWith(color: AppColor.primaryColor),
        ),
      ),
    );
  }
}
