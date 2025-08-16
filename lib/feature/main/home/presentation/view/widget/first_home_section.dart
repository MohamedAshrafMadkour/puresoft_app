import 'package:flutter/material.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_home_indicator.dart';

class HomeFirstSection extends StatefulWidget {
  const HomeFirstSection({super.key});

  @override
  State<HomeFirstSection> createState() => _HomeFirstSectionState();
}

class _HomeFirstSectionState extends State<HomeFirstSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () => setState(() => currentIndex = pageController.page!.round()),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return Column(
      children: [
        SizedBox(
          height: isLandScape
              ? MediaQuery.sizeOf(context).height * 0.4
              : MediaQuery.sizeOf(context).height * 0.15,
          child: PageView.builder(
            controller: pageController,
            itemCount: 4,
            itemBuilder: (context, index) => CustomFirstHomeSectionItem(),
          ),
        ),
        SizedBox(height: 16),
        CustomHomeIndicator(currentIndex: currentIndex),
        SizedBox(height: 16),
      ],
    );
  }
}

class CustomFirstHomeSectionItem extends StatelessWidget {
  const CustomFirstHomeSectionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.15,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: const Color(0xFF00A29A),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Image.asset(Assets.imagesTest, fit: BoxFit.cover),
    );
  }
}
