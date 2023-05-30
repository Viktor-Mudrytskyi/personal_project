import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/core.dart';
import '../../../features.dart';

class RememberPassCheckBox extends StatefulWidget {
  const RememberPassCheckBox({super.key});

  @override
  State<RememberPassCheckBox> createState() => _RememberPassCheckBoxState();
}

class _RememberPassCheckBoxState extends State<RememberPassCheckBox> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;
    return Row(
      children: [
        CustomCheckBox(
            value: val,
            onChanged: (value) {
              setState(() {
                val = value!;
              });
            }),
        const SizedBox(width: 10),
        Text(
          'Remember password',
          style: appTheme.authRememberPass,
        )
      ],
    );
  }
}
