import 'package:flutter/material.dart';

class CustomProductContainerShape extends StatelessWidget {
  const CustomProductContainerShape({
    super.key,
    required this.child,
    this.height,
    this.width,
  });
  final Widget child;
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      height: height ?? MediaQuery.sizeOf(context).height * 0.14,
      decoration: ShapeDecoration(
        color: Color(0xffFFFFFF),

        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        shadows: [
          BoxShadow(
            color: Color(0x29000000),
            blurRadius: 10,
            offset: Offset(0, 0),

            spreadRadius: 2,
          ),
        ],
      ),
      child: child,
    );
  }
}
