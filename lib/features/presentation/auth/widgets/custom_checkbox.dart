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
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return Container(
      height: 21,
      width: 21,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(2),
        border: Border.all(
          color: appTheme.appColors.checkBoxBorder,
          width: 2,
        ),
      ),
      child: Theme(
        data: ThemeData(
          checkboxTheme: CheckboxThemeData(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            visualDensity: VisualDensity.compact,
            checkColor:
                MaterialStatePropertyAll(appTheme.appColors.checkBoxBorder),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
              side: BorderSide(
                  color: appTheme.appColors.checkBoxBorder, width: 2),
            ),
            side:
                BorderSide(color: appTheme.appColors.checkBoxBorder, width: 2),
            fillColor:
                MaterialStatePropertyAll(appTheme.appColors.checkBoxFill),
            overlayColor:
                MaterialStatePropertyAll(appTheme.appColors.checkBoxFill),
            splashRadius: 0,
          ),
        ),
        child: Checkbox(
          value: value,
          side: BorderSide.none,
          shape: const RoundedRectangleBorder(side: BorderSide.none),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
