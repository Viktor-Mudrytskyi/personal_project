import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/core.dart';
import '../../../domain/entities/to_do_entity.dart';

class ToDoCard extends StatefulWidget {
  final ToDoEntity toDoEntity;
  const ToDoCard({
    super.key,
    required this.toDoEntity,
  });

  @override
  State<ToDoCard> createState() => _ToDoCardState();
}

class _ToDoCardState extends State<ToDoCard> {
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
        onTap: () async {
          final k = await FirebaseFirestoreService().getTodo();
        },
        child: ClipRRect(
          borderRadius: defBorder,
          child: Row(
            children: [
              if (widget.toDoEntity.imgUrl != null)
                SizedBox(
                  height: maxSizeDimension * 0.2,
                  width: minSizeDimension * 0.4,
                  child: Image.network(
                    widget.toDoEntity.imgUrl!,
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
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  widget.toDoEntity.title,
                  style: titleStyle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
