import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/ready_view.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

class CustomOnBoardingButton extends StatelessWidget {
  const CustomOnBoardingButton({
    super.key,
    required this.currentPage,
    required this.pageController,
    this.width,
  });

  final int currentPage;
  final PageController pageController;
  final double? width;
  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: width,
      title: currentPage == 2 ? 'Get Started' : 'Next',
      onPressed: () {
        bool isLastPage = currentPage == 2;
        if (isLastPage) {
          Navigator.pushNamed(context, ReadyView.routeName);
        } else {
          pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastLinearToSlowEaseIn,
          );
        }
      },
    );
  }
}
