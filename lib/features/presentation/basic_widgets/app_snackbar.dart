import 'package:flutter/material.dart';

SnackBar getCustomSnackBar({
  required Widget child,
  Function()? callback,
  Color? backgroundColor,
  EdgeInsets? margin,
}) {
  return SnackBar(
    margin: margin,
    content: child,
    backgroundColor: backgroundColor,
    shape: const StadiumBorder(),
    duration: const Duration(seconds: 2),
    behavior: SnackBarBehavior.floating,
    elevation: 3,
  );
}
