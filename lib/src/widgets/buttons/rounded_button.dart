import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWButtonRounded extends StatelessWidget {
  const DSWButtonRounded({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  const factory DSWButtonRounded.secondary({
    required void Function() onPressed,
    required Widget child,
  }) = _SecondaryDSWButtonRounded;

  const factory DSWButtonRounded.info({
    required void Function() onPressed,
    required Widget child,
  }) = _InfoDSWButtonRounded;

  const factory DSWButtonRounded.error({
    required void Function() onPressed,
    required Widget child,
  }) = _ErrorDSWButtonRounded;

  const factory DSWButtonRounded.success({
    required void Function() onPressed,
    required Widget child,
  }) = _SuccessDSWButtonRounded;

  const factory DSWButtonRounded.warning({
    required void Function() onPressed,
    required Widget child,
  }) = _WarningDSWButtonRounded;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.rMax),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h04,
          horizontal: DSSize.w10,
        ),
      ),
      child: child,
    );
  }
}

class _SecondaryDSWButtonRounded extends DSWButtonRounded {
  const _SecondaryDSWButtonRounded({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        foregroundColor: Theme.of(context).colorScheme.onSecondary,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.rMax),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h04,
          horizontal: DSSize.w10,
        ),
      ),
      child: child,
    );
  }
}

class _InfoDSWButtonRounded extends DSWButtonRounded {
  const _InfoDSWButtonRounded({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.info,
        foregroundColor: DSColors.onInfo,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.rMax),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h04,
          horizontal: DSSize.w10,
        ),
      ),
      child: child,
    );
  }
}

class _ErrorDSWButtonRounded extends DSWButtonRounded {
  const _ErrorDSWButtonRounded({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.error,
        foregroundColor: DSColors.onError,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.rMax),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h04,
          horizontal: DSSize.w10,
        ),
      ),
      child: child,
    );
  }
}

class _SuccessDSWButtonRounded extends DSWButtonRounded {
  const _SuccessDSWButtonRounded({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.success,
        foregroundColor: DSColors.onSuccess,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.rMax),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h04,
          horizontal: DSSize.w10,
        ),
      ),
      child: child,
    );
  }
}

class _WarningDSWButtonRounded extends DSWButtonRounded {
  const _WarningDSWButtonRounded({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.warning,
        foregroundColor: DSColors.onWarning,
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.rMax),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: DSSize.h04,
          horizontal: DSSize.w10,
        ),
      ),
      child: child,
    );
  }
}
