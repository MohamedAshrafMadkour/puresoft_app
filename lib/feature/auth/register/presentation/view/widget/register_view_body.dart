import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/feature/auth/login/presentation/view/login_view.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_auth_icon.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_ready_text.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_sign_text.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_auth_button.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_header_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_phone_text_form_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_text_form_field.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const SizedBox(height: 20),
              CustomAuthIcon(icon: Icons.arrow_back_ios_new_outlined),
              SizedBox(height: 50),
              CustomMainText(),
              SizedBox(height: 25),
              Text('Sign Up to Wikala', style: AppStyle.textBold28),
              SizedBox(height: 25),
              CustomHeaderField(text: 'Full Name'),
              const SizedBox(height: 12),
              CustomTextFormField(
                hintText: 'First and Last Name',
                keyboardType: TextInputType.name,
                onSaved: (value) {},
              ),
              const SizedBox(height: 32),
              CustomHeaderField(text: 'Phone Number with Whatsapp'),
              const SizedBox(height: 12),
              CustomPhoneTextFormField(
                hintText: 'Mobile Number',
                keyboardType: TextInputType.phone,
                onSaved: (value) {},
              ),
              const SizedBox(height: 50),
              CustomAuthButton(
                title: 'Sign Up',
                onPressed: () {
                  Navigator.pushNamed(context, LoginView.routeName);
                },
              ),
              const SizedBox(height: 50),
              CustomSignText(
                title: 'Already have an account? ',
                subtitle: '|Login ',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
