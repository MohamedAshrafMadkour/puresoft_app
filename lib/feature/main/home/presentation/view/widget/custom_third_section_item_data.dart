import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_delivery_row.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_logo.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_name_row.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_status_row.dart';
import 'package:puresoft_task/feature/main/seller_name/presentation/view/seller_name_view.dart';

class CustomThirdSectionItemData extends StatelessWidget {
  const CustomThirdSectionItemData({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.only(left: 16), child: CustomLogo()),
        SizedBox(width: 16),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SellerNameView.routeName);
                  },
                  child: CustomNameRow(),
                ),
                SizedBox(height: 12),
                CustomDeliveryRow(),
                SizedBox(height: 12),
                CustomStatusRow(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
