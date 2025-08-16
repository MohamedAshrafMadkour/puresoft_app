import 'package:puresoft_task/core/utils/assets.dart';

class SettingModel {
  final String icon;
  final String title;

  SettingModel({required this.icon, required this.title});
  static List<SettingModel> settings = [
    SettingModel(icon: Assets.imagesProfile, title: 'Profile'),

    SettingModel(icon: Assets.imagesList, title: 'My Orders'),
    SettingModel(icon: Assets.imagesProfileFav, title: 'Favorite'),
    SettingModel(icon: Assets.imagesLanguage, title: 'Language'),
    SettingModel(icon: Assets.imagesSupport, title: 'Support'),
    SettingModel(icon: Assets.imagesTerms, title: 'Terms & Conditions'),
    SettingModel(icon: Assets.imagesInfo, title: 'About us'),
  ];
}
