import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_auth_button.dart';
import 'package:puresoft_task/feature/auth/register/presentation/view/widget/custom_header_field.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/custom_social_contact.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_dialog_text_field.dart';

class ContactViewBody extends StatelessWidget {
  const ContactViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Contact us'),
        SizedBox(height: 25),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: CustomScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      CustomHeaderField(text: 'Name'),
                      SizedBox(height: 16),
                      CustomDialogTextField(
                        maxLines: 1,
                        onSaved: (value) {},
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(height: 16),
                      CustomHeaderField(text: 'Mobile Number'),
                      SizedBox(height: 16),
                      CustomDialogTextField(
                        maxLines: 1,
                        onSaved: (value) {},
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(height: 16),
                      CustomHeaderField(text: 'Message'),
                      SizedBox(height: 16),
                      CustomDialogTextField(
                        maxLines: 4,
                        onSaved: (value) {},
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 21),
                      CustomAuthButton(title: 'Submit', onPressed: () {}),
                      SizedBox(height: 27),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          4,
                          (index) =>
                              CustomSocialContact(image: contactImage[index]),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

List<String> contactImage = [
  Assets.imagesContactPhone,
  Assets.imagesContactFacebook,
  Assets.imagesContactInstagram,
  Assets.imagesContactYoutube,
];
