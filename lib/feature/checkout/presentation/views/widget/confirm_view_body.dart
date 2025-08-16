import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_track_order_button.dart';
import 'package:puresoft_task/feature/orders/presentation/view/my_orders_view.dart';
import 'package:puresoft_task/feature/orders/presentation/view/tracking_order_view.dart';

class ConfirmPaymentViewBody extends StatelessWidget {
  const ConfirmPaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLandScape =
        MediaQuery.orientationOf(context) == Orientation.landscape;
    return isLandScape ? ConfirmViewBodyLandScape() : ConfirmViewBodyPortia();
  }
}

class ConfirmViewBodyPortia extends StatelessWidget {
  const ConfirmViewBodyPortia({super.key});

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
                  style: AppStyle.textBold26(context),
                ),
              ),
              SizedBox(height: 8),
              FittedBox(
                child: Text(
                  'Your order code: #243188',
                  style: AppStyle.textRegular20(context),
                ),
              ),
              FittedBox(
                child: Text(
                  'Thank you for choosing our products!',
                  style: AppStyle.textRegular20(context),
                ),
              ),
              SizedBox(height: 32),
              CustomButton(
                title: 'Continue Shopping',
                onPressed: () {
                  Navigator.pushNamed(context, MyOrdersView.routeName);
                },
                width: double.infinity,
                style: AppStyle.textBold18(context),
              ),
              SizedBox(height: 22),
              CustomTrackOrderButton(
                onPressed: () {
                  Navigator.pushNamed(context, TrackingOrderView.routeName);
                },
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}

class ConfirmViewBodyLandScape extends StatelessWidget {
  const ConfirmViewBodyLandScape({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'Checkout'),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.imagesConfirmed, fit: BoxFit.fill),
                  SizedBox(height: 55),
                  FittedBox(
                    child: Text(
                      'YOUR ORDER IS CONFIRMED!',
                      style: AppStyle.textBold26(context),
                    ),
                  ),
                  SizedBox(height: 8),
                  FittedBox(
                    child: Text(
                      'Your order code: #243188',
                      style: AppStyle.textRegular20(context),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      'Thank you for choosing our products!',
                      style: AppStyle.textRegular20(context),
                    ),
                  ),
                  SizedBox(height: 32),
                  CustomButton(
                    title: 'Continue Shopping',
                    onPressed: () {
                      Navigator.pushNamed(context, MyOrdersView.routeName);
                    },
                    width: double.infinity,
                    style: AppStyle.textBold18(context),
                  ),
                  SizedBox(height: 22),
                  CustomTrackOrderButton(
                    onPressed: () {
                      Navigator.pushNamed(context, TrackingOrderView.routeName);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
