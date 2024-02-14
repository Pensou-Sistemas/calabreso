import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

abstract class DSTypography {
  static TextStyle get headline1 => const TextStyle(
        fontSize: 38,
        height: 52 / 38,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headline2 => const TextStyle(
        fontSize: 32,
        height: 44 / 32,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headline3 => const TextStyle(
        fontSize: 26,
        height: 36 / 26,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headline4 => const TextStyle(
        fontSize: 22,
        height: 30 / 22,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headline5 => const TextStyle(
        fontSize: 18,
        height: 24 / 18,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get headline6 => const TextStyle(
        fontSize: 15,
        height: 21 / 15,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textSubtitle1 => const TextStyle(
        fontSize: 16,
        height: 28 / 16,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textSubtitle2 => const TextStyle(
        fontSize: 14,
        height: 21.12 / 14,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textBody1 => const TextStyle(
        fontSize: 15,
        height: 22 / 15,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textBody2 => const TextStyle(
        fontSize: 13,
        height: 20 / 13,
        fontWeight: FontWeight.w400,
      );
  static TextStyle get textCaption => const TextStyle(
        fontSize: 11,
        height: 14 / 11,
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textOverline => const TextStyle(
        fontSize: 12,
        height: 42.56 / 12,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textButton => const TextStyle(
        fontSize: 15,
        height: 18 / 15,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get textError => const TextStyle(
        fontSize: 13,
        height: 18 / 13,
        fontWeight: FontWeight.w400,
        color: DSColors.error,
      );
}
