import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/feature/profile/presentation/view/terms_view.dart';

class CustomTerms extends StatelessWidget {
  const CustomTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'By continue you agree to our',
            style: AppStyle.textRegular18.copyWith(
              color: const Color(0xFF88909C),
            ),
          ),
          TextSpan(
            text: 'Terms of service',
            style: AppStyle.textRegular18.copyWith(
              color: const Color(0xFF88909C),
            ),
          ),
          TextSpan(
            text: 'and our',
            style: AppStyle.textRegular18.copyWith(
              color: const Color(0xFF7C8594),
            ),
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, TermsView.routeName);
              },
            text: 'Privacy Policy',
            style: AppStyle.textRegular18.copyWith(
              color: const Color(0xFF205A94),
            ),
          ),
        ],
      ),
    );
  }
}
