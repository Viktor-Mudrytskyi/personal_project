import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/core.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.isDense,
  });
  final String? hintText;
  final Icon? suffixIcon;
  final bool? isDense;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return TextFormField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(
            color: appTheme.appColors.textFieldBorder,
            width: 1,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(
            color: appTheme.appColors.textFieldBorder,
            width: 1,
          ),
        ),
        fillColor: appTheme.appColors.textFieldFill,
        filled: true,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(9),
          borderSide: BorderSide(
            color: appTheme.appColors.textFieldBorder,
            width: 1,
          ),
        ),
        contentPadding: const EdgeInsets.only(
          left: 12,
          top: 17,
          bottom: 17,
        ),
        hintStyle: appTheme.appTextStyles.hint,
        suffixIconColor: appTheme.appColors.textFieldHint,
        hintText: hintText,
        isDense: isDense ?? true,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
