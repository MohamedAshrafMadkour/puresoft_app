import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/profile_view_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});
  static const routeName = 'profile_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: ProfileViewBody()));
  }
}
