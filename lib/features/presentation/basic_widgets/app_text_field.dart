import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.isDense,
    this.initialValue,
    this.onChanged,
    this.enabled = true,
    this.errorText,
    this.isError = false,
    this.keyboardType,
    this.obscureText = false,
  });
  final String? hintText;
  final Icon? suffixIcon;
  final bool? isDense;
  final bool enabled;
  final bool obscureText;

  ///If false will not show [errorText]
  final bool isError;
  final String? initialValue;

  ///If [null] does not show error text and does not take space
  ///if EmptyString, takes space
  final String? errorText;
  final Function(String value)? onChanged;
  final TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: obscureText,
          enabled: enabled,
          initialValue: initialValue,
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
          onChanged: onChanged,
          keyboardType: keyboardType,
        ),
        if (errorText != null && isError)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              errorText!,
              style: appTheme.appTextStyles.error,
            ),
          ),
      ],
    );
  }
}
