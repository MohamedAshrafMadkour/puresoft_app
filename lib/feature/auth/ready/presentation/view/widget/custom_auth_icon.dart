import 'package:flutter/material.dart';

class CustomAuthIcon extends StatelessWidget {
  const CustomAuthIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: IconButton(
        icon: Icon(icon),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
