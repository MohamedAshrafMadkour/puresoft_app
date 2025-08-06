import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_auth_icon.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_ready_text.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_sign_text.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_auth_button.dart';
import 'package:puresoft_task/feature/auth/verification/presentation/view/widget/custom_verify_otp.dart';

class VerifyViewBody extends StatelessWidget {
  const VerifyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomAuthIcon(icon: Icons.arrow_back_ios_new_outlined),
              SizedBox(height: 50),
              CustomMainText(),
              SizedBox(height: 25),
              Text('Enter Received OTP', style: AppStyle.textBold28),

              SizedBox(height: 60),
              CustomVerifyOtp(),
              SizedBox(height: 60),
              CustomAuthButton(title: 'Confirm', onPressed: () {}),
              SizedBox(height: 40),
              Text('60', style: AppStyle.textRegular30),
              SizedBox(height: 40),
              CustomSignText(title: 'Not received? ', subtitle: 'Send Again'),
            ],
          ),
        ),
      ],
    );
  }
}
