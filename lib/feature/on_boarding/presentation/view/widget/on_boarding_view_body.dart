import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/ready_view.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_dots_indicator.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_on_boarding_item.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_skip_text.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  int currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () => setState(() => currentPage = pageController.page!.round()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CustomSkipText(currentIndex: currentPage),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.6,
            child: PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (_, index) =>
                  CustomOnBoardingItem(currentIndex: index),
            ),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
          CustomDotsIndicator(currentPage: currentPage),
          SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),

          CustomButton(
            title: currentPage == 2 ? 'Get Started' : 'Next',
            onPressed: () {
              if (currentPage == 0) {
                pageController.animateToPage(
                  1,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInCubic,
                );
                // pageController.animateToPage(page, duration: duration, curve: curve)
              } else if (currentPage == 1) {
                pageController.animateToPage(
                  2,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInCubic,
                );
              } else {
                Navigator.pushNamed(context, ReadyView.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
}
