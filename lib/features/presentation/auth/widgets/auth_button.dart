import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';

class AuthButton extends StatelessWidget {
  const AuthButton.fill(
      {super.key, required this.onPressed, required this.text})
      : isFill = true;
  const AuthButton.border(
      {super.key, required this.onPressed, required this.text})
      : isFill = false;

  final Function() onPressed;
  final String text;
  final bool isFill;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return Container(
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        color: isFill ? appTheme.authButtonFill : appTheme.primaryBackground,
        borderRadius: BorderRadius.circular(27),
        border: Border.all(width: 1, color: appTheme.authButtonFill),
        boxShadow: [appTheme.authButtonShadow],
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: isFill ? appTheme.login : appTheme.register,
        ),
      ),
    );
  }
}
