import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return AlertDialog(
      content: child,
      shape: StadiumBorder(
          side: BorderSide(color: appTheme.appColors.authButtonFill)),
      backgroundColor: appTheme.appColors.primaryBackground,
      elevation: 0,
      alignment: Alignment.topCenter,
    );
  }
}
