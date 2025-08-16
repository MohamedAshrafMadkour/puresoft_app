import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/setting/presentation/view/widget/custom_choose_language_row.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

Future<dynamic> customChooseLanguageDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: Colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: List.generate(2, (index) => CustomChooseLanguageRow()),
          ),
          SizedBox(height: 16),
          CustomButton(
            width: MediaQuery.sizeOf(context).width * .55,
            height: 40,
            title: 'Apply Filter',
            onPressed: () {},
          ),
          SizedBox(height: 16),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Text(
              'Close',
              style: TextStyle(
                color: const Color(0xFF656565),
                fontSize: 16,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
