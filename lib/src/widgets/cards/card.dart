import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWCard extends StatelessWidget {
  const DSWCard({
    super.key,
    required this.child,
    this.onTap,
  });

  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      clipBehavior: Clip.antiAlias,
      color: Theme.of(context).colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DSSize.radius04),
        side: BorderSide(
          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.15),
        ),
      ),
      // ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(DSSize.width12),
          child: child,
        ),
      ),
    );
  }
}
