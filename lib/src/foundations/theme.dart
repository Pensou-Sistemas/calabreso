import "package:calabreso/calabreso.dart";
import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;
  final String fontFamily;
  final MaterialScheme lightScheme;
  final MaterialScheme darkScheme;

  const MaterialTheme({
    required this.textTheme,
    required this.fontFamily,
    required this.lightScheme,
    required this.darkScheme,
  });

  ThemeData light() {
    return theme(lightScheme.toColorScheme());
  }

  ThemeData dark() {
    return theme(darkScheme.toColorScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
        useMaterial3: true,
        brightness: colorScheme.brightness,
        colorScheme: colorScheme,
        fontFamily: fontFamily,
        textTheme: textTheme.apply(
          fontFamily: fontFamily,
          bodyColor: colorScheme.onSurface,
          displayColor: colorScheme.onSurface,
        ),
        scaffoldBackgroundColor: colorScheme.background,
        dialogBackgroundColor: colorScheme.surface,
        canvasColor: colorScheme.surface,
        iconTheme: IconThemeData(color: colorScheme.onSurface),
        dividerColor: colorScheme.outline,
        dividerTheme: DividerThemeData(color: colorScheme.outline),
        appBarTheme: AppBarTheme(backgroundColor: colorScheme.background),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: DSTypography.textBody1,
          contentPadding: const EdgeInsets.symmetric(horizontal: DSSize.w04, vertical: DSSize.h02),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: colorScheme.outline),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: colorScheme.outline.withOpacity(0.5)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: colorScheme.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: colorScheme.error),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: colorScheme.primary),
          ),
        ),
        popupMenuTheme: PopupMenuThemeData(
          surfaceTintColor: colorScheme.surfaceTint,
        ),
      );

  Color errorColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.error : darkScheme.error;
  }

  Color successColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.success : darkScheme.success;
  }

  Color warningColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.warning : darkScheme.warning;
  }

  Color infoColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.info : darkScheme.info;
  }

  Color onErrorColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.onError : darkScheme.onError;
  }

  Color onSuccessColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.onSuccess : darkScheme.onSuccess;
  }

  Color onWarningColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.onWarning : darkScheme.onWarning;
  }

  Color onInfoColor(Brightness brightness) {
    return brightness == Brightness.light ? lightScheme.onInfo : darkScheme.onInfo;
  }
}

class MaterialScheme {
  const MaterialScheme({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    this.primaryContainer,
    this.onPrimaryContainer,
    required this.secondary,
    required this.onSecondary,
    this.secondaryContainer,
    this.onSecondaryContainer,
    this.tertiary,
    this.onTertiary,
    this.tertiaryContainer,
    this.onTertiaryContainer,
    required this.error,
    required this.onError,
    required this.warning,
    required this.onWarning,
    required this.success,
    required this.onSuccess,
    required this.info,
    required this.onInfo,
    required this.background,
    required this.onBackground,
    required this.surface,
    required this.onSurface,
    this.surfaceVariant,
    this.onSurfaceVariant,
    this.surfaceTint,
    required this.outline,
    this.outlineVariant,
    this.shadow,
    this.scrim,
    this.inverseSurface,
    this.inverseOnSurface,
    this.inversePrimary,
  });

  final Brightness brightness;
  final Color primary;
  final Color onPrimary;
  final Color? primaryContainer;
  final Color? onPrimaryContainer;
  final Color secondary;
  final Color onSecondary;
  final Color? secondaryContainer;
  final Color? onSecondaryContainer;
  final Color? tertiary;
  final Color? onTertiary;
  final Color? tertiaryContainer;
  final Color? onTertiaryContainer;
  final Color error;
  final Color onError;
  final Color warning;
  final Color onWarning;
  final Color success;
  final Color onSuccess;
  final Color info;
  final Color onInfo;
  final Color background;
  final Color onBackground;
  final Color surface;
  final Color onSurface;
  final Color? surfaceVariant;
  final Color? onSurfaceVariant;
  final Color? surfaceTint;
  final Color outline;
  final Color? outlineVariant;
  final Color? shadow;
  final Color? scrim;
  final Color? inverseSurface;
  final Color? inverseOnSurface;
  final Color? inversePrimary;
}

extension MaterialSchemeUtils on MaterialScheme {
  ColorScheme toColorScheme() {
    return ColorScheme(
      brightness: brightness,
      primary: primary,
      onPrimary: onPrimary,
      primaryContainer: primaryContainer,
      onPrimaryContainer: onPrimaryContainer,
      secondary: secondary,
      onSecondary: onSecondary,
      secondaryContainer: secondaryContainer,
      onSecondaryContainer: onSecondaryContainer,
      tertiary: tertiary,
      onTertiary: onTertiary,
      tertiaryContainer: tertiaryContainer,
      onTertiaryContainer: onTertiaryContainer,
      error: error,
      onError: onError,
      background: background,
      onBackground: onBackground,
      surface: surface,
      onSurface: onSurface,
      surfaceVariant: surfaceVariant,
      onSurfaceVariant: onSurfaceVariant,
      outline: outline,
      outlineVariant: outlineVariant,
      shadow: shadow,
      scrim: scrim,
      inverseSurface: inverseSurface,
      onInverseSurface: inverseOnSurface,
      inversePrimary: inversePrimary,
      surfaceTint: surfaceTint,
    );
  }
}
