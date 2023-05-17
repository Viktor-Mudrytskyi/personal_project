import 'package:flutter/material.dart';
import 'package:personal_project/core/core.dart';

import '../../../features.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const kHorizontalPadding = 20.0;
    const kVerticalPadding = 26.0;
    const kInnerHorizontalPadding = 26.0;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Theme.of(context).colorScheme.primary,
              Theme.of(context).colorScheme.secondary,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: kVerticalPadding,
          ),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CustomPaint(
                      painter: CustomShape(
                          shadowColor: Theme.of(context).colorScheme.shadow),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kInnerHorizontalPadding),
                        child: Column(
                          children: [
                            const SizedBox(height: 18),
                            Image.asset(
                              AppImages.kLoginImage,
                              fit: BoxFit.contain,
                              height: 147,
                            ),
                            const SizedBox(height: 500),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
