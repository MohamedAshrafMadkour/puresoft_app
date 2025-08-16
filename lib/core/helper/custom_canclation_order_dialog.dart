import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:puresoft_task/core/constant/app_style.dart';
import 'package:puresoft_task/core/utils/assets.dart';
import 'package:puresoft_task/feature/on_boarding/presentation/view/widget/custom_button.dart';
import 'package:puresoft_task/feature/orders/presentation/view/widget/custom_dialog_text_field.dart';

Future<dynamic> customCancelationOrderDialog(BuildContext context) {
  return showDialog(
    context: context,

    builder: (context) => AlertDialog(
      scrollable: true,
      backgroundColor: Colors.white,
      content: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Cancel Order',
                  style: AppStyle.textBold18(
                    context,
                  ).copyWith(color: const Color(0xFF292727)),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Reason',
                style: AppStyle.textRegular14(
                  context,
                ).copyWith(color: const Color(0xFF858D9A)),
              ),
              SizedBox(height: 8),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.7,
                height: 43,
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 10,
                  right: 18,
                  bottom: 10,
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                      spreadRadius: 0,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Text(
                      'Please select reason',
                      style: AppStyle.textRegular14(
                        context,
                      ).copyWith(color: Colors.black),
                    ),
                    SvgPicture.asset(Assets.imagesArrowDown, fit: BoxFit.fill),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Notes',
                style: AppStyle.textRegular14(
                  context,
                ).copyWith(color: const Color(0xFF858D9A)),
              ),
              SizedBox(height: 8),
              CustomDialogTextField(
                onSaved: (value) {},
                onChanged: (value) {},
                maxLines: 5,
              ),
              SizedBox(height: 16),
              CustomButton(
                width: double.infinity,
                title: 'Confirm Cancelation',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
