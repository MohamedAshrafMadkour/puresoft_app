import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_size.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/auth/phone/presentation/view/phone_view.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_auth_icon.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_ready_text.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_sign_text.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_auth_button.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_header_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_phone_text_form_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_text_form_field.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/main_view.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return isLandScape
        ? const LoginViewBodyLandScape()
        : const LoginViewBodyPortia();
  }
}

class LoginViewBodyPortia extends StatelessWidget {
  const LoginViewBodyPortia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 20),
                CustomAuthIcon(icon: Icons.arrow_back_ios_new_outlined),
                SizedBox(height: 50),
                CustomMainText(),
                SizedBox(height: 25),
                Text('Login to Wikala', style: AppStyle.textBold28(context)),
                SizedBox(height: 25),
                CustomHeaderField(text: 'Phone Number'),
                const SizedBox(height: 12),
                CustomPhoneTextFormField(
                  hintText: 'Mobile Number',
                  keyboardType: TextInputType.phone,
                  onSaved: (value) {},
                ),
                SizedBox(height: 25),
                CustomHeaderField(text: 'Phone Number'),
                const SizedBox(height: 12),
                CustomTextFormField(
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  onSaved: (value) {},
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PhoneView.routeName);
                    },
                    child: Text(
                      'Forget Password?',
                      style: AppStyle.textRegular18(context).copyWith(
                        color: const Color(0xFF004D8E),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomAuthButton(
                  title: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, MainView.routeName);
                  },
                ),

                const SizedBox(height: 50),
                CustomSignText(
                  title: 'Don’t have an account? ',
                  subtitle: '|Sign up  ',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginViewBodyLandScape extends StatelessWidget {
  const LoginViewBodyLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSize.kPadding),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 20),
                CustomAuthIcon(icon: Icons.arrow_back_ios_new_outlined),

                CustomMainText(),
                SizedBox(height: 25),
                Text('Login to Wikala', style: AppStyle.textBold28(context)),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomHeaderField(text: 'Phone Number'),
                        const SizedBox(height: 12),
                        CustomPhoneTextFormField(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          hintText: 'Mobile Number',
                          keyboardType: TextInputType.phone,
                          onSaved: (value) {},
                        ),
                      ],
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        CustomHeaderField(text: 'Password'),
                        const SizedBox(height: 12),
                        CustomTextFormField(
                          height: MediaQuery.sizeOf(context).height * 0.1,
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          hintText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          onSaved: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, PhoneView.routeName);
                    },
                    child: Text(
                      'Forget Password?',
                      style: AppStyle.textRegular18(context).copyWith(
                        color: const Color(0xFF004D8E),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                CustomAuthButton(
                  title: 'Login',
                  onPressed: () {
                    Navigator.pushNamed(context, MainView.routeName);
                  },
                ),

                const SizedBox(height: 50),
                CustomSignText(
                  title: 'Don’t have an account? ',
                  subtitle: '|Sign up  ',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
