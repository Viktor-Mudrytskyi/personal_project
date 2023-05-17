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
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: kHorizontalPadding,
                vertical: kVerticalPadding,
              ),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    CustomPaint(
                      painter: CustomShape(
                        shadowColor: Theme.of(context).colorScheme.shadow,
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 18),
                          Image.asset(
                            AppImages.kLoginImage,
                            fit: BoxFit.contain,
                            height: 147,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: kInnerHorizontalPadding,
                            ),
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Email Address',
                                    suffixIcon: Icon(
                                      Icons.mail_outline,
                                      size: 24,
                                    ),
                                    isDense: true,
                                  ),
                                ),
                                const SizedBox(height: 600),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
