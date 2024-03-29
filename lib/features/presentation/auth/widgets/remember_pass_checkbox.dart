import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/core.dart';
import '../../../features.dart';

class RememberPassCheckBox extends StatelessWidget {
  const RememberPassCheckBox({
    super.key,
    required this.value,
    required this.onPressed,
    this.isActive = true,
  });
  final bool value;
  final Function(bool? val) onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return GestureDetector(
      onTap: isActive
          ? () {
              onPressed(!value);
            }
          : null,
      child: SizedBox(
        child: Row(
          children: [
            CustomCheckBox(
              value: value,
              onChanged: isActive ? onPressed : null,
            ),
            const SizedBox(width: 10),
            Text(
              'Remember me',
              style: appTheme.appTextStyles.authRememberPass,
            )
          ],
        ),
      ),
    );
  }
}
