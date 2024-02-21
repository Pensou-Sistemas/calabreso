import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWButtonFlat extends StatelessWidget {
  const DSWButtonFlat({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  const factory DSWButtonFlat.secondary({
    required void Function() onPressed,
    required Widget child,
  }) = _SecondaryDSWButtonFlat;

  const factory DSWButtonFlat.info({
    required void Function() onPressed,
    required Widget child,
  }) = _InfoDSWButtonFlat;

  const factory DSWButtonFlat.error({
    required void Function() onPressed,
    required Widget child,
  }) = _ErrorDSWButtonFlat;

  const factory DSWButtonFlat.success({
    required void Function() onPressed,
    required Widget child,
  }) = _SuccessDSWButtonFlat;

  const factory DSWButtonFlat.warning({
    required void Function() onPressed,
    required Widget child,
  }) = _WarningDSWButtonFlat;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
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

class _SecondaryDSWButtonFlat extends DSWButtonFlat {
  const _SecondaryDSWButtonFlat({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Theme.of(context).colorScheme.onSecondary,
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

class _InfoDSWButtonFlat extends DSWButtonFlat {
  const _InfoDSWButtonFlat({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.info,
        foregroundColor: DSColors.onInfo,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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

class _ErrorDSWButtonFlat extends DSWButtonFlat {
  const _ErrorDSWButtonFlat({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.error,
        foregroundColor: DSColors.onError,
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

class _SuccessDSWButtonFlat extends DSWButtonFlat {
  const _SuccessDSWButtonFlat({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.success,
        foregroundColor: DSColors.onSuccess,
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

class _WarningDSWButtonFlat extends DSWButtonFlat {
  const _WarningDSWButtonFlat({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.warning,
        foregroundColor: DSColors.onWarning,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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
