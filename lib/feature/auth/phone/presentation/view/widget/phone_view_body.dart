import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_size.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_auth_icon.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/custom_ready_text.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_auth_button.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_header_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_phone_text_form_field.dart';
import 'package:puresoft_task/feature/auth/verification/presentation/view/verify_view.dart';

class PhoneViewBody extends StatelessWidget {
  const PhoneViewBody({super.key});

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
                Text('Enter your Number', style: AppStyle.textBold28(context)),
                SizedBox(height: 25),
                CustomHeaderField(text: 'Phone Number'),
                const SizedBox(height: 12),
                CustomPhoneTextFormField(
                  hintText: 'Mobile Number',
                  keyboardType: TextInputType.phone,
                  onSaved: (value) {},
                ),
                SizedBox(height: 50),
                CustomAuthButton(
                  title: 'Submit',
                  onPressed: () {
                    Navigator.pushNamed(context, VerifyView.routeName);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
