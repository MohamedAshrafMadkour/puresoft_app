import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSocialContact extends StatelessWidget {
  const CustomSocialContact({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SvgPicture.asset(image, fit: BoxFit.fill),
      ),
    );
  }
}
