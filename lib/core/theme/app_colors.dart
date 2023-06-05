import 'package:flutter/material.dart';

class AppColors {
  final Color authButtonFill;
  final Color primaryBackground;
  final Color textFieldBorder;
  final Color textFieldFill;
  final Color textFieldHint;
  final Color checkBoxBorder;
  final Color checkBoxFill;

  const AppColors._({
    required this.authButtonFill,
    required this.checkBoxBorder,
    required this.checkBoxFill,
    required this.primaryBackground,
    required this.textFieldBorder,
    required this.textFieldFill,
    required this.textFieldHint,
  });

  factory AppColors.light() {
    return const AppColors._(
      authButtonFill: Color(0xFF0386D0),
      primaryBackground: Color(0xFFFFFFFF),
      textFieldBorder: Color(0xFFCCC9C9),
      textFieldFill: Color(0xFFF9F9F9),
      textFieldHint: Color(0xFFC4C4C4),
      checkBoxBorder: Color(0xFFB4A8A8),
      checkBoxFill: Color(0xFFFAFAFA),
    );
  }

  factory AppColors.dark() {
    return const AppColors._(
      authButtonFill: Color(0xFF0386D0),
      primaryBackground: Color(0xFFFFFFFF),
      textFieldBorder: Color(0xFFCCC9C9),
      textFieldFill: Color(0xFFF9F9F9),
      textFieldHint: Color(0xFFC4C4C4),
      checkBoxBorder: Color(0xFFB4A8A8),
      checkBoxFill: Color(0xFFFAFAFA),
    );
  }
}
