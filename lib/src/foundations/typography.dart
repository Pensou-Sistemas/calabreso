import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class DSTypography {
  static TextStyle get headlineLarge => TextStyle(
        fontSize: 32.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headlineMedium => TextStyle(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headlineSmall => TextStyle(
        fontSize: 24.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleLarge => TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMedium => TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmall => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get bodyLarge => TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get bodyMedium => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get bodySmall => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get labelLarge => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get labelMedium => TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get labelSmall => TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get textButton => TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
      );
}
