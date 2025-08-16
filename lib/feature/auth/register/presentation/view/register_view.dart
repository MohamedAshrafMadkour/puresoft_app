import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_size.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const routeName = 'register_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.kPadding),
          child: RegisterViewBody(),
        ),
      ),
    );
  }
}
