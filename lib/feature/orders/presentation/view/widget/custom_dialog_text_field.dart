import 'package:flutter/material.dart';

class CustomDialogTextField extends StatelessWidget {
  const CustomDialogTextField({
    super.key,
    required this.maxLines,

    this.onSaved,
    this.onChanged,
    this.keyboardType,
  });
  final Function(String)? onChanged;
  final int maxLines;
  final TextInputType? keyboardType;

  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'field is required';
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        enabledBorder: outlineBorder(),
        focusedBorder: outlineBorder(),
      ),
    );
  }

  OutlineInputBorder outlineBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFBDBDBD)),
      borderRadius: BorderRadius.circular(25),
    );
  }
}
