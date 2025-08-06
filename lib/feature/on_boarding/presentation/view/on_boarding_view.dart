import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const routeName = 'on_boarding_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: OnBoardingViewBody(),
      ),
    );
  }
}
