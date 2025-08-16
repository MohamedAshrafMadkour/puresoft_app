import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_dots_indicator.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_on_boarding_button.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_on_boarding_item.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_skip_text.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return isLandScape
        ? const OnBoardingViewBodyLandscape()
        : const OnBoardingViewBodyPortia();
  }
}

class OnBoardingViewBodyPortia extends StatefulWidget {
  const OnBoardingViewBodyPortia({super.key});

  @override
  State<OnBoardingViewBodyPortia> createState() =>
      _OnBoardingViewBodyPortiaState();
}

class _OnBoardingViewBodyPortiaState extends State<OnBoardingViewBodyPortia> {
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

          CustomOnBoardingButton(
            currentPage: currentPage,
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}

class OnBoardingViewBodyLandscape extends StatefulWidget {
  const OnBoardingViewBodyLandscape({super.key});

  @override
  State<OnBoardingViewBodyLandscape> createState() =>
      _OnBoardingViewBodyLandscapeState();
}

class _OnBoardingViewBodyLandscapeState
    extends State<OnBoardingViewBodyLandscape> {
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
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width * 0.6,
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: 3,
                  itemBuilder: (_, index) =>
                      CustomOnBoardingItemLandScape(currentIndex: index),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
              CustomDotsIndicator(currentPage: currentPage),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.08),
            ],
          ),
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomOnBoardingButton(
              width: MediaQuery.sizeOf(context).width * 0.3,
              currentPage: currentPage,
              pageController: pageController,
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * .04),
            Visibility(
              visible: currentPage != 2,
              child: CustomButton(
                width: MediaQuery.sizeOf(context).width * 0.3,
                title: 'Skip',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
