import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/app_color.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/main_view.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_image_bar.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({super.key, required this.onItemTapped});
  final ValueChanged<int> onItemTapped;

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return Container(
      width: double.infinity,
      height: isLandScape
          ? MediaQuery.sizeOf(context).height * 0.15
          : MediaQuery.sizeOf(context).height * 0.075,

      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: ShapeDecoration(
        color: AppColor.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: barImage.asMap().entries.map((e) {
          int index = e.key;
          return InkWell(
            onTap: () {
              setState(() {
                currentIndex = index;
                widget.onItemTapped(currentIndex);
              });
            },
            child: CustomItemBar(image: barImage[index]),
          );
        }).toList(),
      ),
    );
  }
}
