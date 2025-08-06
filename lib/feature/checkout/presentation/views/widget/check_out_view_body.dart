import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/core/widget/custom_divider.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/confirm_payment_view.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_stepper_row.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/first_custom_page_view_section.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/second_custom_page_view_section.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/third_cutsom_page_view_section.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

class CheckoutViewBody extends StatefulWidget {
  const CheckoutViewBody({super.key});

  @override
  State<CheckoutViewBody> createState() => _CheckoutViewBodyState();
}

class _CheckoutViewBodyState extends State<CheckoutViewBody> {
  late PageController pageController;
  int pageControllerIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      pageControllerIndex = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Checkout'),
        SizedBox(height: 24),
        CustomStepperRow(
          pageController: pageController,
          currentIndex: pageControllerIndex,
        ),
        SizedBox(height: 20),
        CustomDivider(color: const Color(0xffBFBFBF)),
        SizedBox(height: 20),
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
              FirstCustomPageViewSection(),
              SecondCustomPageViewSection(),
              ThirdCustomPageViewSection(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomButton(
            title: pageControllerIndex != 2 ? 'Continue' : 'Place Order',
            onPressed: () {
              executionCheckOutNavigation(context);
            },
            width: double.infinity,
          ),
        ),
        SizedBox(height: MediaQuery.sizeOf(context).height * 0.04),
      ],
    );
  }

  void executionCheckOutNavigation(BuildContext context) {
    if (pageControllerIndex == 0) {
      pageController.animateToPage(
        1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInCubic,
      );
    } else if (pageControllerIndex == 1) {
      pageController.animateToPage(
        2,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInCubic,
      );
    } else if (pageControllerIndex == 2) {
      Navigator.pushNamed(context, ConfirmPaymentView.routeName);
    }
  }
}
