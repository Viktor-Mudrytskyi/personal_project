import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/core_blocs/options_cubit/app_options_cubit.dart';

class CustomCheckBox extends StatelessWidget {
  const CustomCheckBox({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final bool value;
  final Function(bool? value)? onChanged;

  @override
  Widget build(BuildContext context) {
    final checkBoxTheme =
        context.watch<AppOptionsCubit>().state.appTheme.checkboxTheme;
    final borderTheme = checkBoxTheme.shape as RoundedRectangleBorder;
    return Container(
      height: 21,
      width: 21,
      decoration: BoxDecoration(
        borderRadius: borderTheme.borderRadius,
        border: Border.all(
          color: borderTheme.side.color,
          width: borderTheme.side.width,
        ),
      ),
      child: Checkbox(
        value: value,
        side: BorderSide.none,
        shape: const RoundedRectangleBorder(side: BorderSide.none),
        onChanged: onChanged,
      ),
    );
  }
}
