import 'package:flutter/material.dart';
import 'package:puresoft_task/core/widget/custom_product_container_shape.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_third_section_item_data.dart';

class CustomThirdHomeSectionItem extends StatelessWidget {
  const CustomThirdHomeSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProductContainerShape(
      child: const CustomThirdSectionItemData(),
    );
  }
}
