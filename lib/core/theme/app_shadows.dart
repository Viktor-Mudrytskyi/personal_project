import 'package:flutter/material.dart';

class AppShadows {
  final BoxShadow backgroundShadow;
  final BoxShadow authButtonShadow;

  const AppShadows._({
    required this.authButtonShadow,
    required this.backgroundShadow,
  });

  factory AppShadows.light() {
    return const AppShadows._(
      backgroundShadow: BoxShadow(
        offset: Offset(0, 4),
        blurRadius: 14,
        color: Color(0xAA000000),
      ),
      authButtonShadow: BoxShadow(
        offset: Offset(0, 0),
        blurRadius: 4,
        color: Color(0x40000000),
      ),
    );
  }
}
