import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_size.dart';
import 'package:puresoft_task/feature/auth/ready/presentation/view/widget/ready_view_body.dart';

class ReadyView extends StatelessWidget {
  const ReadyView({super.key});
  static const routeName = 'ready_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.kPadding),
          child: ReadyViewBody(),
        ),
      ),
    );
  }
}
