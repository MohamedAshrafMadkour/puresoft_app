import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/feature/auth/ready/data/model/auth_model.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_auth_icon.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_ready_text.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_sign_text.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_social_login.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_terms.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/register_view.dart';

class ReadyViewBody extends StatelessWidget {
  const ReadyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        CustomAuthIcon(icon: Icons.close),
        SizedBox(height: 50),
        CustomMainText(),
        SizedBox(height: 25),
        Text('Welcome to Our app', style: AppStyle.textBold28),
        SizedBox(height: 50),
        CustomSocialLogin(
          onTap: () {
            Navigator.pushNamed(context, RegisterView.routeName);
          },
          image: AuthModel.authList[0].image,
          title: AuthModel.authList[0].title,
        ),
        SizedBox(height: 16),
        CustomSocialLogin(
          image: AuthModel.authList[1].image,
          title: AuthModel.authList[1].title,
        ),
        SizedBox(height: 16),
        CustomSocialLogin(
          image: AuthModel.authList[2].image,
          title: AuthModel.authList[2].title,
        ),
        SizedBox(height: 60),
        CustomSignText(title: 'Already member? ', subtitle: 'Sign In'),
        SizedBox(height: 50),
        Flexible(fit: FlexFit.loose, child: CustomTerms()),
      ],
    );
  }
}
