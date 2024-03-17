import 'package:calabreso/calabreso.dart';
import 'package:flutter/material.dart';

class DSWTextField extends StatelessWidget {
  const DSWTextField({
    super.key,
    this.hintText,
    required this.controller,
  });

  final String? hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: DSTypography.bodyMedium,
          contentPadding: const EdgeInsets.symmetric(horizontal: DSSize.w04, vertical: DSSize.h02),
          enabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.outline.withOpacity(0.5)),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.error),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(DSSize.r03)),
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          ),
        ),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
        ),
      ),
    );
  }
}
