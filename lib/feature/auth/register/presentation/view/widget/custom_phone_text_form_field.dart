import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';

class CustomPhoneTextFormField extends StatelessWidget {
  const CustomPhoneTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.onSaved,
    this.height,
    this.width,
  });
  final String hintText;
  final TextInputType? keyboardType;
  final Function(String?)? onSaved;
  final double? height, width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.only(top: 5, left: 1, right: 18, bottom: 5),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
          side: const BorderSide(color: Color(0xFFBDBDBD), width: 0),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter this field';
          }
          return null;
        },

        keyboardType: keyboardType,
        onSaved: onSaved,
        decoration: InputDecoration(
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
          prefixIcon: SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.22,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down_sharp),
                ),

                Text(
                  'KW',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFF2D3237)),
                ),
                SizedBox(width: 10),
                Container(
                  width: 2,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFFE4E4E4),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ],
            ),
          ),
          hintText: hintText,
          hintStyle: AppStyle.textRegular14(
            context,
          ).copyWith(color: Colors.black),
        ),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent, width: 0),
    );
  }
}
