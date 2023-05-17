import 'package:flutter/material.dart';

class AppTheme {
  static final light = ThemeData(
    colorScheme: const ColorScheme.light(
      primary: Color(0xff036BB9),
      secondary: Color(0xff3B5998),
      shadow: Color(0xAA000000),
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
  );
}
