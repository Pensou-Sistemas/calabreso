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
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(DSSize.r03)),
          hintStyle: DSTypography.textBody1,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: DSSize.w04,
            vertical: DSSize.h02,
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
