import 'package:flutter/material.dart';

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
    final checkBoxTheme = Theme.of(context).checkboxTheme;
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
