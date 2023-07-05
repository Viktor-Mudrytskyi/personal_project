import 'package:flutter/material.dart';

class AppColors {
  final Color authButtonFill;
  final Color primaryBackground;
  final Color textFieldBorder;
  final Color textFieldFill;
  final Color textFieldHint;
  final Color checkBoxBorder;
  final Color checkBoxFill;
  final Color spinner;
  final Color splashColor;
  final Color highlight;

  const AppColors._({
    required this.authButtonFill,
    required this.checkBoxBorder,
    required this.checkBoxFill,
    required this.primaryBackground,
    required this.textFieldBorder,
    required this.textFieldFill,
    required this.textFieldHint,
    required this.spinner,
    required this.highlight,
    required this.splashColor,
  });

  factory AppColors.light() {
    return AppColors._(
      authButtonFill: const Color(0xFF0386D0),
      primaryBackground: const Color(0xFFFFFFFF),
      textFieldBorder: const Color(0xFFCCC9C9),
      textFieldFill: const Color(0xFFF9F9F9),
      textFieldHint: const Color(0xFFC4C4C4),
      checkBoxBorder: const Color(0xFFB4A8A8),
      checkBoxFill: const Color(0xFFFAFAFA),
      spinner: const Color(0xFF0386D0),
      highlight: const Color.fromARGB(255, 156, 156, 156).withOpacity(0.4),
      splashColor: const Color.fromARGB(255, 0, 98, 155).withOpacity(0.4),
    );
  }

  // factory AppColors.dark() {
  //   return const AppColors._(
  //     authButtonFill: Colors.red,
  //     primaryBackground: Color(0xFFFFFFFF),
  //     textFieldBorder: Color(0xFFCCC9C9),
  //     textFieldFill: Color(0xFFF9F9F9),
  //     textFieldHint: Color(0xFFC4C4C4),
  //     checkBoxBorder: Color(0xFFB4A8A8),
  //     checkBoxFill: Color(0xFFFAFAFA),
  //     spinner: Color(0xFF0386D0),
  //   );
  // }
}
