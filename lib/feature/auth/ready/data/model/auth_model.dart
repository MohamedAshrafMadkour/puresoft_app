import 'package:puresoft_task/core/utils/assets.dart';

class AuthModel {
  final String image;
  final String title;

  AuthModel({required this.image, required this.title});

  static List<AuthModel> authList = [
    AuthModel(image: Assets.imagesPhoneIcon, title: 'Phone Number'),
    AuthModel(image: Assets.imagesGoogleIcon, title: 'Google'),
    AuthModel(image: Assets.imagesFacebook, title: 'Facebook'),
  ];
}
