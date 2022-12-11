import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors/colors.dart';
import '../colors/hex_colors.dart';

class FontStyles {
  static TextStyle get bottomNavLabel => TextStyle(
        fontSize: 7.sp,
      );
  static TextStyle get addressStyle => TextStyle(
        fontSize: 11.sp,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get hintStyle => TextStyle(
        fontSize: 11.sp,
        color: AppColors.hintTextColor,
      );
  static TextStyle get boldStyle => TextStyle(
        fontSize: 11.sp,
        color: HexColor("#474749"),
        fontWeight: FontWeight.bold,
      );
  static TextStyle get categoryNameStyle => TextStyle(
        fontSize: 10.sp,
        color: HexColor("#474749"),
        fontWeight: FontWeight.w500,
      );
}
