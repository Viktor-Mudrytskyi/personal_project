import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class ToDoCard extends StatelessWidget {
  final ToDoCardDto toDoCardDto;
  const ToDoCard({
    super.key,
    required this.toDoCardDto,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final defBorder = BorderRadius.circular(10);
    final titleStyle = context.appTheme.appTextStyles.todoTitle;
    final maxSizeDimension = max(size.width, size.height);
    final minSizeDimension = min(size.width, size.height);
    return Material(
      borderRadius: defBorder,
      elevation: 10,
      child: InkWell(
        borderRadius: defBorder,
        onTap: () {},
        child: ClipRRect(
          borderRadius: defBorder,
          child: Row(
            children: [
              SizedBox(
                height: maxSizeDimension * 0.2,
                width: minSizeDimension * 0.4,
                child: Image.network(
                  toDoCardDto.imgUrl,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress != null) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else {
                      return child;
                    }
                  },
                ),
              ),
              const SizedBox(width: 10),
              Text(
                toDoCardDto.title,
                style: titleStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
