import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../features.dart';

class CreateToDoDialog extends StatelessWidget {
  const CreateToDoDialog({super.key});

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
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Add image'),
              ),
              const SizedBox(
                height: 30,
              ),
              const AppTextField(),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Create'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
