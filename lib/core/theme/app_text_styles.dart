import 'package:flutter/material.dart';

class AppTextStyles {
  final TextStyle authHeadline;
  final TextStyle authBody;
  final TextStyle authBodyBlue;
  final TextStyle authRememberPass;
  final TextStyle authForgotPass;
  final TextStyle login;
  final TextStyle register;
  final TextStyle hint;
  final TextStyle error;
  final TextStyle authSmall;

  const AppTextStyles._({
    required this.authBody,
    required this.authBodyBlue,
    required this.authForgotPass,
    required this.authHeadline,
    required this.authRememberPass,
    required this.login,
    required this.register,
    required this.hint,
    required this.error,
    required this.authSmall,
  });

  factory AppTextStyles.light() {
    return const AppTextStyles._(
      authHeadline: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 21,
        fontWeight: FontWeight.w400,
        color: Color(0xFF000000),
        height: 1.16,
      ),
      authBody: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: Color(0xFF6B5E5E),
      ),
      authBodyBlue: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.8,
        color: Color(0xff0386D0),
      ),
      authRememberPass: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF6B5E5E),
      ),
      authForgotPass: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF0386D0),
      ),
      login: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFFFFFFFF),
      ),
      register: TextStyle(
        fontFamily: 'Trebuc',
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF036BB9),
      ),
      hint: TextStyle(
        fontFamily: 'Trebuc',
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color(0xFFC4C4C4),
      ),
      error: TextStyle(
        fontFamily: 'Trebuc',
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: Color.fromARGB(255, 160, 25, 25),
      ),
      authSmall: TextStyle(
        fontFamily: 'Trebuc',
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: Color(0xFF6B5E5E),
      ),
    );
  }
}
