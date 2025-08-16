import 'package:flutter/material.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_any_time_delivery.dart';
import 'package:puresoft_task/feature/checkout/presentation/views/widget/custom_now_delivery_time.dart';

class FirstCustomPageViewSection extends StatelessWidget {
  const FirstCustomPageViewSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return isLandScape
        ? FirstCustomPageViewSectionLandScape()
        : FirstCustomPageViewSectionPortia();
  }
}

class FirstCustomPageViewSectionPortia extends StatelessWidget {
  const FirstCustomPageViewSectionPortia({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: CustomNowDeliveryTime(),
          ),
          SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: CustomAnyTimeDelivery(),
          ),
        ],
      ),
    );
  }
}

class FirstCustomPageViewSectionLandScape extends StatelessWidget {
  const FirstCustomPageViewSectionLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13),
              child: CustomNowDeliveryTime(),
            ),
            SizedBox(height: 26),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomAnyTimeDelivery(),
            ),
          ],
        ),
      ),
    );
  }
}
