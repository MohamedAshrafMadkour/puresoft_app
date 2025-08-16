import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_auth_button.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_header_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_phone_text_form_field.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_text_form_field.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/custom_choose_image.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 42),
      child: CustomScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                SizedBox(height: 20),
                CustomChooseImage(),
                SizedBox(height: 16),
                Text(
                  'Welcome, Ahmed',
                  style: AppStyle.textRegular24(
                    context,
                  ).copyWith(color: Colors.black),
                ),
                SizedBox(height: 34),
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
                const SizedBox(height: 32),
                CustomHeaderField(text: 'Password'),
                const SizedBox(height: 12),
                CustomTextFormField(
                  hintText: 'Password',
                  keyboardType: TextInputType.visiblePassword,
                  onSaved: (value) {},
                ),
                const SizedBox(height: 32),
                CustomAuthButton(title: 'Update', onPressed: () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
