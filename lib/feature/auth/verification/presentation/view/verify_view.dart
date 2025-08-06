import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_size.dart';
import 'package:puresoft_task/feature/auth/verification/presentation/view/widget/verify_view_body.dart';

class VerifyView extends StatelessWidget {
  const VerifyView({super.key});
  static const routeName = 'verify_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kPadding),
          child: VerifyViewBody(),
        ),
      ),
    );
  }
}
