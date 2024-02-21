import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWButtonTonal extends StatelessWidget {
  const DSWButtonTonal({
    super.key,
    this.onPressed,
    required this.child,
  });

  final void Function()? onPressed;
  final Widget child;

  const factory DSWButtonTonal.secondary({
    void Function()? onPressed,
    required Widget child,
  }) = _SecondaryDSWButtonTonal;

  const factory DSWButtonTonal.info({
    void Function()? onPressed,
    required Widget child,
  }) = _InfoDSWButtonTonal;

  const factory DSWButtonTonal.error({
    void Function()? onPressed,
    required Widget child,
  }) = _ErrorDSWButtonTonal;

  const factory DSWButtonTonal.success({
    void Function()? onPressed,
    required Widget child,
  }) = _SuccessDSWButtonTonal;

  const factory DSWButtonTonal.warning({
    void Function()? onPressed,
    required Widget child,
  }) = _WarningDSWButtonTonal;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.18),
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

class _SecondaryDSWButtonTonal extends DSWButtonTonal {
  const _SecondaryDSWButtonTonal({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary.withOpacity(0.18),
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

class _InfoDSWButtonTonal extends DSWButtonTonal {
  const _InfoDSWButtonTonal({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.info.withOpacity(0.1),
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

class _ErrorDSWButtonTonal extends DSWButtonTonal {
  const _ErrorDSWButtonTonal({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.error.withOpacity(0.18),
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

class _SuccessDSWButtonTonal extends DSWButtonTonal {
  const _SuccessDSWButtonTonal({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.success.withOpacity(0.1),
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

class _WarningDSWButtonTonal extends DSWButtonTonal {
  const _WarningDSWButtonTonal({super.onPressed, required super.child});

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: DSColors.warning.withOpacity(0.1),
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
