import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/auth/login/presentation/view/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(child: const LoginViewBody()),
    );
  }
}
