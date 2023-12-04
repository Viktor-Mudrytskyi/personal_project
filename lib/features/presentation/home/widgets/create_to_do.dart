import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class CreateToDoDialog extends StatefulWidget {
  const CreateToDoDialog({super.key, required this.onCreate});
  final FutureOr<void> Function(File file, String title) onCreate;

  @override
  State<CreateToDoDialog> createState() => _CreateToDoDialogState();
}

class _CreateToDoDialogState extends State<CreateToDoDialog> {
  File? image;
  String title = '';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.only(
        right: 40,
        left: 40,
        top: (size.height - 400) / 2,
        bottom: (size.height - 400) / 2,
      ),
      height: 100,
      child: Material(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              if (image == null)
                Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.router.push(CameraRoute(
                          onImageCaptured: (File f) {
                            image = f;
                            setState(() {});
                          },
                        ));
                      },
                      child: const Text('Add image'),
                    ),
                  ],
                )
              else
                Center(
                  child: SizedBox(
                    height: 100,
                    child: Image.file(image!),
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                onChanged: (value) {
                  title = value;
                },
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (image != null && title.isNotEmpty) {
                    widget.onCreate(image!, title);
                    Focus.maybeOf(context)?.unfocus();
                    context.router.pop();
                  }
                },
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

@RoutePage()
class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key, required this.onImageCaptured});
  final void Function(File file) onImageCaptured;

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: FlutterCamera(
        color: Colors.amber,
        onImageCaptured: (value) {
          final path = value.path;
          if (path.contains('.jpg')) {
            widget.onImageCaptured(File(path));
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Image.file(File(path)),
                  );
                });
          }
        },
      ),
    );
  }
}
