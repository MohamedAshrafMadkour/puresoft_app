import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_third_section_home_item.dart';

class CustomThirdHomeSectionItemList extends StatelessWidget {
  const CustomThirdHomeSectionItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: CustomThirdHomeSectionItem(),
        );
      }),
    );
  }
}
