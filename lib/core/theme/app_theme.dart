import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xff036BB9),
      secondary: Color(0xff3B5998),
      shadow: Color(0xAA000000),
    ),
    checkboxTheme: CheckboxThemeData(
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      visualDensity: VisualDensity.compact,
      checkColor: const MaterialStatePropertyAll(Color(0xFFB4A8A8)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(2),
        side: const BorderSide(color: Color(0xFFB4A8A8), width: 2),
      ),
      side: const BorderSide(color: Color(0xFFB4A8A8), width: 2),
      fillColor: const MaterialStatePropertyAll(Color(0xFFFAFAFA)),
      overlayColor: const MaterialStatePropertyAll(Color(0xFFFAFAFA)),
    ),
    inputDecorationTheme: InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: const BorderSide(
          color: Color(0xFFCCC9C9),
          width: 1,
        ),
      ),
      fillColor: const Color(0xFFF9F9F9),
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: const BorderSide(
          color: Color(0xFFCCC9C9),
          width: 1,
        ),
      ),
      contentPadding: const EdgeInsets.only(
        left: 12,
        top: 17,
        bottom: 17,
      ),
      hintStyle: const TextStyle(
        fontFamily: 'Trebuc',
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0xFFC4C4C4),
      ),
      suffixIconColor: const Color(0xFFC4C4C4),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 21,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000),
        height: 1.16,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: Color(0xFF6B5E5E),
      ),
      displaySmall: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: Color(0xff0386D0),
      ),
      labelSmall: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF6B5E5E),
      ),
    ),
  );
}
