import 'package:flutter/material.dart';
import 'package:personal_project/core/core.dart';

import '../../../features.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double kHorizontalPadding = 20.0;
    const double kVerticalPadding = 26.0;
    const double kInnerHorizontalPadding = 26.0;
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
                          const SizedBox(height: 13),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Image.asset(
                              AppImages.kLoginImage,
                              fit: BoxFit.contain,
                              height: 147,
                              width: double.infinity,
                            ),
                          ),
                          const SizedBox(height: 18),
                          SizedBox(
                            height: 35,
                            child: Text(
                              'Welcome',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ),
                          SizedBox(
                            height: 66,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'By signing in you are agreeing to our\n',
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  TextSpan(
                                    text: 'Term and privacy policy',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall,
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: 3),
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
                                const SizedBox(height: 22),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: 'Password',
                                    suffixIcon: Icon(
                                      Icons.lock_outline,
                                      size: 24,
                                    ),
                                    isDense: true,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                const RememberPassCheckBox(),
                                const SizedBox(height: 460),
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
