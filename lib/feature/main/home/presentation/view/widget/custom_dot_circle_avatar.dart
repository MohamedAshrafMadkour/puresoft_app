import 'package:flutter/material.dart';

class CustomDotCircleAvatar extends StatelessWidget {
  const CustomDotCircleAvatar({super.key, this.color, this.radius});
  final Color? color;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius ?? 3,
      backgroundColor: color ?? Color(0xffC8C8C8),
    );
  }
}
