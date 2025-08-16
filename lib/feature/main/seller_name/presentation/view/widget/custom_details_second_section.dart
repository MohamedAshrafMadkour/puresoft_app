import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/widget/custom_divider.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/custom_details_name.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/custom_select_row.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/widget/custom_selector.dart';

class CustomDetailsSecondSection extends StatelessWidget {
  const CustomDetailsSecondSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomDetailsName(),
            Column(
              children: [
                Text(
                  'Price',
                  style: AppStyle.textRegular14(
                    context,
                  ).copyWith(color: const Color(0xFF656565)),
                ),
                Row(
                  children: [
                    Text('KD12.00 ', style: AppStyle.tetBold20(context)),
                    Text(
                      'KD14.00',
                      style: AppStyle.textRegular17LineThrough(
                        context,
                      ).copyWith(decorationColor: Colors.red[100]),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 4),
        Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
          style: AppStyle.textRegular16(
            context,
          ).copyWith(color: const Color(0xFF656565)),
        ),
        SizedBox(height: 14),
        Text(
          'Sell Per : Kartoon',
          style: AppStyle.textRegular16(
            context,
          ).copyWith(color: const Color(0xFF656565)),
        ),
        SizedBox(height: 21),
        CustomSelector(title: 'Select Weight'),
        CustomDivider(),
        Column(
          children: List.generate(
            3,
            (index) => CustomSelectorRow(title: choiceWeight[index]),
          ),
        ),
        CustomSelector(title: 'Select Addons'),
        CustomDivider(),
        Column(
          children: List.generate(
            2,
            (index) => CustomSelectorRow(title: choiceAddons[index]),
          ),
        ),
      ],
    );
  }
}

List<String> choiceWeight = [
  '50 Gram - 4.00 KD',
  '1 Kg - 6.25 KD',
  '2 Kg - 12.00 KD',
];

List<String> choiceAddons = ['50 Gram - 4.00 KD', '1 Kg - 6.25 KD'];
