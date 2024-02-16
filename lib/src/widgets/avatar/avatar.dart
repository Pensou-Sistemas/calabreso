import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWAvatarCircle extends StatelessWidget {
  const DSWAvatarCircle({super.key, required this.child});

  const factory DSWAvatarCircle.tonal({required Widget child}) = _AvatarCircleTonal;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        shape: BoxShape.circle,
      ),
      width: DSSize.sMinInteractiveDimension,
      height: DSSize.sMinInteractiveDimension,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        child: Center(child: child),
      ),
    );
  }
}

class _AvatarCircleTonal extends DSWAvatarCircle {
  const _AvatarCircleTonal({required super.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.15),
        shape: BoxShape.circle,
      ),
      width: DSSize.sMinInteractiveDimension,
      height: DSSize.sMinInteractiveDimension,
      child: IconTheme(
        data: IconThemeData(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(child: child),
      ),
    );
  }
}
