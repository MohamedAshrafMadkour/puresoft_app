import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomSkipText extends StatelessWidget {
  const CustomSkipText({super.key, required this.currentIndex});
  final int currentIndex;
  @override
  Widget build(BuildContext context) {
    return currentIndex != 2
        ? Column(
            children: [
              Text('Skip', style: AppStyle.textRegular15(context)),
              SizedBox(height: 10),
              SizedBox(
                width: 30,
                child: Divider(height: 1, color: const Color(0xFF656565)),
              ),
            ],
          )
        : SizedBox(height: MediaQuery.sizeOf(context).height * 0.037);
  }
}
