import 'package:flutter/material.dart';

class CustomFittedBox extends StatelessWidget {
  const CustomFittedBox({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return FittedBox(fit: BoxFit.fill, child: child);
  }
}
