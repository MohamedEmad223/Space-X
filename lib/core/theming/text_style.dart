import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors_manger.dart';
import 'font_weight_manager.dart';

class TextStyles {
  // ------------------- Regular fonts -------------------
  static TextStyle font14WhiteRegularOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle font14LightGreyRegularUbuntu = GoogleFonts.orienta(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.lightGreyColor,
  );
  static TextStyle font14LightWhiteRegularUbuntu = GoogleFonts.orienta(
    fontSize: 14.sp,
    fontWeight: FontWeightManager.regular,
    color: ColorsManager.lightWhiteColor,
  );
  static TextStyle font16WhiteRegularOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle font16LightBlueRegularOrienta = GoogleFonts.orienta(
    color: ColorsManager.lightBlueColor,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.regular,
  );
  static TextStyle font24WhiteRegularOrbitron = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.regular,
  );

  // ------------------- Medium Fonts -------------------
  static TextStyle font12WhiteMediumOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 12.sp,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle font13BlueMediumOrienta = GoogleFonts.orienta(
    color: ColorsManager.mainColor,
    decorationColor: ColorsManager.mainColor,
    decoration: TextDecoration.underline,
    fontSize: 13.sp,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle font15WhiteMediumOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle font15BlueMediumOrienta = GoogleFonts.orienta(
    color: ColorsManager.mainColor,
    fontSize: 15.sp,
    fontWeight: FontWeightManager.medium,
  );
  static TextStyle font18WhiteMediumOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 18.sp,
    fontWeight: FontWeightManager.medium,
  );

  //------------------- Bold fonts -------------------
  static TextStyle font10WhiteBoldOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 10.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font12WhiteBoldOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 12.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font14WhiteBoldUbuntu = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font16WhiteBoldOrienta = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 16.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font19WhiteBoldOrbitron = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 19.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font20WhiteBoldOrbitron = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 20.sp,
    fontWeight: FontWeight.bold,
  );
  static TextStyle font24WhiteBoldOrbitron = GoogleFonts.orienta(
    color: ColorsManager.whiteColor,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
  );
  static TextStyle font24BlackBoldOrbitron = GoogleFonts.orienta(
    color: ColorsManager.blackColor,
    fontSize: 24.sp,
    fontWeight: FontWeightManager.bold,
  );

  //------------------- Extra Bold fonts -------------------
  static TextStyle font25WhiteExtraBoldOrbitron = GoogleFonts.orienta(
    fontSize: 25.sp,
    fontWeight: FontWeightManager.extraBold,
    color: ColorsManager.whiteColor,
  );
}
