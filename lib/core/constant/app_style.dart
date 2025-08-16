import 'package:flutter/material.dart';
import 'package:puresoft_task/core/constant/app_size.dart';
import 'package:puresoft_task/core/utils/app_color.dart';

abstract class AppStyle {
  static TextStyle textRegular15(context) => TextStyle(
    color: Color(0xFF656565),
    fontSize: getResponsiveFontSize(context, fontSize: 15),
    fontWeight: FontWeight.w400,
  );
  static TextStyle textBold22(context) => TextStyle(
    color: Color(0xFF2F2E41),
    fontSize: getResponsiveFontSize(context, fontSize: 22),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegular17(context) => TextStyle(
    color: Color(0xFF78787C),
    fontSize: getResponsiveFontSize(context, fontSize: 17),

    fontWeight: FontWeight.w400,
  );
  static TextStyle textMedium16(context) => TextStyle(
    color: Colors.white,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontWeight: FontWeight.w500,
  );

  static TextStyle textBold51(context) => TextStyle(
    color: AppColor.primaryColor,
    fontSize: getResponsiveFontSize(context, fontSize: 51),
    fontWeight: FontWeight.w700,
  );

  static TextStyle textBold42(context) => TextStyle(
    color: AppColor.primaryColor,
    fontSize: getResponsiveFontSize(context, fontSize: 42),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textBold28(context) => TextStyle(
    color: Colors.black,
    fontSize: getResponsiveFontSize(context, fontSize: 28),
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegular14(context) => TextStyle(
    color: Color(0xFF242729),
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontWeight: FontWeight.w400,
  );
  static TextStyle textRegular18(context) => TextStyle(
    color: Colors.black,
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Arial',
    fontWeight: FontWeight.w400,
  );
  static TextStyle textBold18(context) => TextStyle(
    color: Colors.white,
    fontSize: getResponsiveFontSize(context, fontSize: 18),
    fontFamily: 'Arial',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegular30(context) => TextStyle(
    color: Color(0xFF707070),
    fontSize: getResponsiveFontSize(context, fontSize: 30),
    fontFamily: 'Segoe UI',
    fontWeight: FontWeight.w400,
  );
  static TextStyle textBold24(context) => TextStyle(
    color: Color(0xFF204F38),
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
  );

  static TextStyle textRegular7(context) => TextStyle(
    color: Color(0xFF48464C),
    fontSize: getResponsiveFontSize(context, fontSize: 7),
    fontFamily: 'Segoe UI',
    fontWeight: FontWeight.w400,
  );

  static TextStyle textBold19(context) => TextStyle(
    color: Color(0xFF292727),
    fontSize: getResponsiveFontSize(context, fontSize: 19),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegularTitillium14(context) => TextStyle(
    color: Color(0xFF656565),
    fontSize: getResponsiveFontSize(context, fontSize: 14),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w400,
  );
  static TextStyle textRegular12(context) => TextStyle(
    color: Color(0xFF204F38),
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: 'Arial',
    fontWeight: FontWeight.w400,
  );
  static TextStyle textBold16(context) => TextStyle(
    color: Colors.black,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Segoe UI',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegular16(context) => TextStyle(
    color: Color(0xFF656565),
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w400,
  );
  static TextStyle tetBold20(context) => TextStyle(
    color: Color(0xFF656565),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegular17LineThrough(context) => TextStyle(
    color: Color(0xFFDF958F),
    fontSize: getResponsiveFontSize(context, fontSize: 17),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.lineThrough,
  );
  static TextStyle textSemibold12(context) => TextStyle(
    color: Colors.white,
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w600,
  );
  static TextStyle textBold12(context) => TextStyle(
    color: Color(0xFFBEBEBE),
    fontSize: getResponsiveFontSize(context, fontSize: 12),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textBold17(context) => TextStyle(
    color: Color(0xFF204F38),
    fontSize: getResponsiveFontSize(context, fontSize: 17),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textSemiBold16(context) => TextStyle(
    color: Colors.white,
    fontSize: getResponsiveFontSize(context, fontSize: 16),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w600,
  );
  static TextStyle textRegular20(context) => TextStyle(
    color: Color(0xFF656565),
    fontSize: getResponsiveFontSize(context, fontSize: 20),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w400,
  );
  static TextStyle textBold26(context) => TextStyle(
    color: AppColor.primaryColor,
    fontSize: getResponsiveFontSize(context, fontSize: 26),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textBold21(context) => TextStyle(
    color: Color(0xFF292727),
    fontSize: getResponsiveFontSize(context, fontSize: 21),
    fontFamily: 'Titillium Web',
    fontWeight: FontWeight.w700,
  );
  static TextStyle textRegular24(context) => TextStyle(
    color: Colors.black,
    fontSize: getResponsiveFontSize(context, fontSize: 24),
    fontFamily: 'Arial',
    fontWeight: FontWeight.w400,
  );
}

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveSize = scaleFactor * fontSize;

  double lowerFont = fontSize * .8;
  double upperFont = fontSize * 1;
  return responsiveSize.clamp(lowerFont, upperFont);
}

double getScaleFactor(context) {
  var width = MediaQuery.sizeOf(context).width;
  if (width < AppSize.tablet) {
    return width / 1100;
  } else if (width < AppSize.desktop) {
    return width / 1300;
  } else {
    return width / 1700;
  }
}
