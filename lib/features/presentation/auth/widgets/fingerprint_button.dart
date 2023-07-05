import 'package:flutter/material.dart';

import '../../../../core/core.dart';

class FingerPrintButton extends StatelessWidget {
  const FingerPrintButton({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return SizedBox(
      height: 72.0,
      width: 69.0,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: appTheme.appColors.authButtonFill,
            ),
            child: Image.asset(
              AppImages.kFingerPrint,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                highlightColor: appTheme.appColors.highlight,
                splashColor: appTheme.appColors.splashColor,
                onTap: onTap,
                borderRadius: BorderRadius.circular(14.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
