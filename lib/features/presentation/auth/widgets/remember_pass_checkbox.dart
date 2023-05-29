import 'package:flutter/material.dart';
import 'package:personal_project/features/features.dart';

class RememberPassCheckBox extends StatefulWidget {
  const RememberPassCheckBox({super.key});

  @override
  State<RememberPassCheckBox> createState() => _RememberPassCheckBoxState();
}

class _RememberPassCheckBoxState extends State<RememberPassCheckBox> {
  bool val = false;
  @override
  Widget build(BuildContext context) {
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
          style: Theme.of(context).textTheme.labelSmall,
        )
      ],
    );
  }
}
