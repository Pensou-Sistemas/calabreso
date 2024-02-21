import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWButtonText extends StatelessWidget {
  const DSWButtonText({
    super.key,
    this.onPressed,
    required this.child,
  });

  final void Function()? onPressed;
  final Widget child;

  const factory DSWButtonText.secondary({
    void Function()? onPressed,
    required Widget child,
  }) = _SecondaryDSWButtonText;

  const factory DSWButtonText.info({
    void Function()? onPressed,
    required Widget child,
  }) = _InfoDSWButtonText;

  const factory DSWButtonText.error({
    void Function()? onPressed,
    required Widget child,
  }) = _ErrorDSWButtonText;

  const factory DSWButtonText.success({
    void Function()? onPressed,
    required Widget child,
  }) = _SuccessDSWButtonText;

  const factory DSWButtonText.warning({
    void Function()? onPressed,
    required Widget child,
  }) = _WarningDSWButtonText;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.primary,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h02,
          horizontal: DSSize.w05,
        ),
      ),
      child: child,
    );
  }
}

class _SecondaryDSWButtonText extends DSWButtonText {
  const _SecondaryDSWButtonText({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h02,
          horizontal: DSSize.w05,
        ),
      ),
      child: child,
    );
  }
}

class _InfoDSWButtonText extends DSWButtonText {
  const _InfoDSWButtonText({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: DSColors.info,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h02,
          horizontal: DSSize.w05,
        ),
      ),
      child: child,
    );
  }
}

class _ErrorDSWButtonText extends DSWButtonText {
  const _ErrorDSWButtonText({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: DSColors.error,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h02,
          horizontal: DSSize.w05,
        ),
      ),
      child: child,
    );
  }
}

class _SuccessDSWButtonText extends DSWButtonText {
  const _SuccessDSWButtonText({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: DSColors.success,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h02,
          horizontal: DSSize.w05,
        ),
      ),
      child: child,
    );
  }
}

class _WarningDSWButtonText extends DSWButtonText {
  const _WarningDSWButtonText({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: DSColors.warning,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r03),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h02,
          horizontal: DSSize.w05,
        ),
      ),
      child: child,
    );
  }
}
