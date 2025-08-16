import 'package:flutter/material.dart';
import 'package:puresoft_task/core/helper/on_generate_method.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/check_out_view.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/confirm_payment_view.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/main_view.dart';

void main() {
  runApp(
    const PureSoftTask(),
    // DevicePreview(enabled: true, builder: (context) => const PureSoftTask()),
  );
}

class PureSoftTask extends StatelessWidget {
  const PureSoftTask({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: MainView.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
