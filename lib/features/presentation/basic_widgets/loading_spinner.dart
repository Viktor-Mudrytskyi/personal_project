import 'package:flutter/material.dart';

import '../../../core/core.dart';

class LoadingSpinner extends StatelessWidget {
  const LoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return ColoredBox(
      color: appTheme.appColors.primaryBackground,
      child: Center(
        child: CircularProgressIndicator(
          color: appTheme.appColors.spinner,
        ),
      ),
    );
  }
}
