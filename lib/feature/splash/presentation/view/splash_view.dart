import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:puresoft_task/feature/splash/presentation/view/widget/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName = 'splash_view';

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.kSplashColor,
      body: SplashViewBody(),
    );
  }
}
