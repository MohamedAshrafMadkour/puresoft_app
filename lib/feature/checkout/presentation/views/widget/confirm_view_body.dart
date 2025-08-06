import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/utils/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_track_order_button.dart';

class ConfirmPaymentViewBody extends StatelessWidget {
  const ConfirmPaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Checkout'),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.imagesConfirmed, fit: BoxFit.fill),
              SizedBox(height: 55),
              FittedBox(
                child: Text(
                  'YOUR ORDER IS CONFIRMED!',
                  style: AppStyle.textBold26,
                ),
              ),
              SizedBox(height: 8),
              FittedBox(
                child: Text(
                  'Your order code: #243188',
                  style: AppStyle.textRegular20,
                ),
              ),
              FittedBox(
                child: Text(
                  'Thank you for choosing our products!',
                  style: AppStyle.textRegular20,
                ),
              ),
              SizedBox(height: 32),
              CustomButton(
                title: 'Continue Shopping',
                onPressed: () {},
                width: double.infinity,
                style: AppStyle.textBold18,
              ),
              SizedBox(height: 22),
              CustomTrackOrderButton(onPressed: () {}),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
