import 'package:puresoft_task/core/utils/assets.dart';

class PaymentModel {
  final String image;
  final String title;

  PaymentModel({required this.image, required this.title});
  static List<PaymentModel> paymentList = [
    PaymentModel(
      image: Assets.imagesCreditCard,
      title: 'Credit Card/Debit card',
    ),
    PaymentModel(image: Assets.imagesCash, title: 'Cash of Delivery'),
    PaymentModel(image: Assets.imagesKnet, title: 'Knet'),
  ];
}
