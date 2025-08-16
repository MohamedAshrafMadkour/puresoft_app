// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/helper/custom_choose_language_dialog.dart';

import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/main/setting/data/model/setting_model.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/contact_view.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/custom_setting_list_tile.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/profile_view.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/profile/presentation/view/terms_view.dart';

class SettingViewBody extends StatelessWidget {
  const SettingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Fruit Market'),
        SizedBox(height: 40),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: Center(
                          child: SvgPicture.asset(
                            Assets.imagesUser,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Welcome, Fruit Market',
                      style: AppStyle.textRegular24(context),
                    ),
                    SizedBox(height: 24),
                    CustomButton(
                      title: 'Login',
                      width: MediaQuery.sizeOf(context).width * .8,
                      onPressed: () {},
                    ),
                    SizedBox(height: 24),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[0],
                      onPressed: () {
                        Navigator.pushNamed(context, ProfileView.routeName);
                      },
                    ),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[1],
                      onPressed: () {},
                    ),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[2],
                      onPressed: () {},
                    ),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[3],
                      onPressed: () {
                        customChooseLanguageDialog(context);
                      },
                    ),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[4],
                      onPressed: () {
                        Navigator.pushNamed(context, ContactView.routeName);
                      },
                    ),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[5],
                      onPressed: () {
                        Navigator.pushNamed(context, TermsView.routeName);
                      },
                    ),
                    CustomSettingListTile(
                      settingModel: SettingModel.settings[6],
                      onPressed: () {
                        Navigator.pushNamed(context, TermsView.routeName);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
