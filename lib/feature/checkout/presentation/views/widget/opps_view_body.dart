import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/core/widget/custom_app_bar.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';

class OppsViewBody extends StatelessWidget {
  const OppsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(title: 'CheckOut'),
        Spacer(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 42),
          child: Column(
            children: [
              SvgPicture.asset(Assets.imagesOps, fit: BoxFit.fill),
              SizedBox(height: 46),
              Text(
                'OPS',
                style: AppStyle.textBold26(
                  context,
                ).copyWith(color: Color(0xFFFF4A4A)),
              ),
              SizedBox(height: 12),
              FittedBox(
                child: Text(
                  'Error while confirming your payment/order',
                  style: AppStyle.textRegular18(
                    context,
                  ).copyWith(color: const Color(0xFF656565)),
                ),
              ),
              SizedBox(height: MediaQuery.sizeOf(context).height * 0.1),
              CustomButton(
                width: double.infinity,
                title: 'Back',
                onPressed: () {
                  Navigator.pop(context);
                },
                color: const Color(0xFFFF4A4A),
              ),
            ],
          ),
        ),
        Spacer(),
      ],
    );
  }
}
