import 'package:flutter/material.dart';
import 'package:puresoft_task/core/helper/on_generate_method.dart';
import 'package:puresoft_task/feature/splash/presentation/view/splash_view.dart';

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
      initialRoute: SplashView.routeName,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
    );
  }
}
