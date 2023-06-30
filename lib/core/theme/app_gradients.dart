import 'package:flutter/material.dart';

class AppGradients {
  final LinearGradient authBackgroundGradient;
  final LinearGradient dialogBackground;

  const AppGradients._({
    required this.authBackgroundGradient,
    required this.dialogBackground,
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
      dialogBackground: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xff09203f),
          Color(0xff537895),
        ],
      ),
    );
  }
}
