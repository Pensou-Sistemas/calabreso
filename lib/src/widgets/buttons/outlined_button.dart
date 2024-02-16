import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWButtonOutlined extends StatelessWidget {
  const DSWButtonOutlined({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final void Function() onPressed;
  final Widget child;

  const factory DSWButtonOutlined.secondary({
    required void Function() onPressed,
    required Widget child,
  }) = _SecondaryDSWButtonOutlined;

  const factory DSWButtonOutlined.info({
    required void Function() onPressed,
    required Widget child,
  }) = _InfoDSWButtonOutlined;

  const factory DSWButtonOutlined.error({
    required void Function() onPressed,
    required Widget child,
  }) = _ErrorDSWButtonOutlined;

  const factory DSWButtonOutlined.success({
    required void Function() onPressed,
    required Widget child,
  }) = _SuccessDSWButtonOutlined;

  const factory DSWButtonOutlined.warning({
    required void Function() onPressed,
    required Widget child,
  }) = _WarningDSWButtonOutlined;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.primary,
        side: BorderSide(color: Theme.of(context).colorScheme.primary),
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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

class _SecondaryDSWButtonOutlined extends DSWButtonOutlined {
  const _SecondaryDSWButtonOutlined({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        side: BorderSide(color: Theme.of(context).colorScheme.secondary),
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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

class _InfoDSWButtonOutlined extends DSWButtonOutlined {
  const _InfoDSWButtonOutlined({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: DSColors.info,
        side: const BorderSide(color: DSColors.info),
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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

class _ErrorDSWButtonOutlined extends DSWButtonOutlined {
  const _ErrorDSWButtonOutlined({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: DSColors.error,
        side: const BorderSide(color: DSColors.error),
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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

class _SuccessDSWButtonOutlined extends DSWButtonOutlined {
  const _SuccessDSWButtonOutlined({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: DSColors.success,
        side: const BorderSide(color: DSColors.success),
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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

class _WarningDSWButtonOutlined extends DSWButtonOutlined {
  const _WarningDSWButtonOutlined({required super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: DSColors.warning,
        side: const BorderSide(color: DSColors.warning),
        textStyle: DSTypography.textButton,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(DSSize.r04),
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
