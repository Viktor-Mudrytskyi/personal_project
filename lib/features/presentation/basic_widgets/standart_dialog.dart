import 'package:flutter/material.dart';

import '../../../core/core.dart';

class StandartDialog extends StatelessWidget {
  const StandartDialog.info({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final size = MediaQuery.of(context).size;
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      insetPadding: EdgeInsets.symmetric(
        vertical: size.height / 5,
        horizontal: size.width / 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: appTheme.appGradients.dialogBackground,
        ),
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  Text(
                    '):',
                    style: appTheme.appTextStyles.dialogTitle
                        .copyWith(fontSize: 100),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    label,
                    style: appTheme.appTextStyles.dialogTitle,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
