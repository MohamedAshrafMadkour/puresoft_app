import 'package:flutter/widgets.dart';
import 'package:puresoft_task/feature/main/home/presentation/view/widget/custom_offer_and_free_delivery.dart';

class CustomOffersAndFreeDeliveryList extends StatefulWidget {
  const CustomOffersAndFreeDeliveryList({super.key});

  @override
  State<CustomOffersAndFreeDeliveryList> createState() =>
      _CustomOffersAndFreeDeliveryListState();
}

class _CustomOffersAndFreeDeliveryListState
    extends State<CustomOffersAndFreeDeliveryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(2, (index) {
        return GestureDetector(
          onTap: () {},
          child: CustomOffersAndFreeDelivery(
            title: choiceDelivery[index],
            isSelected: (value) {},
          ),
        );
      }),
    );
  }
}

List<String> choiceDelivery = ['Offers', 'Free Delivery'];
