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
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(DSSize.radius03)),
          hintStyle: DSTypography.textBody1,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: DSSize.width08,
            vertical: DSSize.height04,
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
