import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Spacer(),
        Image.asset(Assets.imagesFirstMainImage, fit: BoxFit.cover),
        Expanded(child: const SizedBox()),
        Image.asset(Assets.imagesSecondMainImage, fit: BoxFit.cover),
      ],
    );
  }
}
