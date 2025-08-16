import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_third_section_home_item.dart';

class CustomThirdHomeSectionItemList extends StatelessWidget {
  const CustomThirdHomeSectionItemList({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return isLandScape
        ? const CustomThirdHomeSectionItemListLandScape()
        : const CustomThirdHomeSectionItemListPortia();
  }
}

class CustomThirdHomeSectionItemListPortia extends StatelessWidget {
  const CustomThirdHomeSectionItemListPortia({super.key});

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

class CustomThirdHomeSectionItemListLandScape extends StatelessWidget {
  const CustomThirdHomeSectionItemListLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
      ),
      delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
        return CustomThirdHomeSectionItem();
      }),
    );
  }
}
