import 'package:flutter/material.dart';

class AppGradients {
  final LinearGradient authBackgroundGradient;

  const AppGradients._({
    required this.authBackgroundGradient,
  });

  factory AppGradients.light() {
    return const AppGradients._(
      authBackgroundGradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff036BB9),
          Color(0xff3B5998),
        ],
      ),
    );
  }
}
