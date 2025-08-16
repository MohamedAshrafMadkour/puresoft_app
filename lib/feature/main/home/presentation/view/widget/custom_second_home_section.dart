import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_second_home_section_item.dart';

class CustomSecondHomeSection extends StatelessWidget {
  const CustomSecondHomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(4, (index) {
        return Padding(
          padding: EdgeInsets.only(right: index != 3 ? 16 : 0),
          child: CustomSecondHomeSectionItem(image: placeImages[index]),
        );
      }),
    );
  }
}

List<String> placeImages = [
  Assets.imagesRest,
  Assets.imagesFarm,
  Assets.imagesCoffee,
  Assets.imagesPharmacy,
];

/**SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.095,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: placeImages.length,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: CustomSecondHomeSectionItem(image: placeImages[index]),
          );
        },
      ),
    ); */
