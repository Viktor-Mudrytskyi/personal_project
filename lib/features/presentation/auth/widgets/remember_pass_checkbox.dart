import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/core.dart';
import '../../../features.dart';

class RememberPassCheckBox extends StatelessWidget {
  const RememberPassCheckBox(
      {super.key, required this.value, required this.onPressed});
  final bool value;
  final Function(bool? val) onPressed;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return Row(
      children: [
        CustomCheckBox(
          value: value,
          onChanged: onPressed,
        ),
        const SizedBox(width: 10),
        Text(
          'Remember password',
          style: appTheme.appTextStyles.authRememberPass,
        )
      ],
    );
  }
}
