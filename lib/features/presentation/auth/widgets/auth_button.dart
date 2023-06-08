import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';

class AuthButton extends StatelessWidget {
  const AuthButton.fill({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.height,
  }) : isFill = true;
  const AuthButton.border({
    super.key,
    required this.onPressed,
    required this.text,
    this.width,
    this.height,
  }) : isFill = false;

  final Function() onPressed;
  final String text;
  final bool isFill;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return Material(
      color: appTheme.appColors.primaryBackground,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(27),
        child: Ink(
          width: width ?? double.infinity,
          height: height ?? 45,
          decoration: BoxDecoration(
            color: isFill
                ? appTheme.appColors.authButtonFill
                : appTheme.appColors.primaryBackground,
            borderRadius: BorderRadius.circular(27),
            border:
                Border.all(width: 1, color: appTheme.appColors.authButtonFill),
            boxShadow: [appTheme.appShadows.authButtonShadow],
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: isFill
                  ? appTheme.appTextStyles.login
                  : appTheme.appTextStyles.register,
            ),
          ),
        ),
      ),
    );
  }
}
