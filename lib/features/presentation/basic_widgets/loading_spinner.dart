import 'package:flutter/material.dart';

import '../../../core/core.dart';

class LoadingSpinner extends StatelessWidget {
  const LoadingSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return Center(
      child: CircularProgressIndicator(
        color: appTheme.appColors.spinner,
      ),
    );
  }
}
