import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/core.dart';

import '../../../features.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _LoginScreen();
  }
}

class _LoginScreen extends StatelessWidget {
  const _LoginScreen();

  @override
  Widget build(BuildContext context) {
    const double kHorizontalPadding = 20.0;
    const double kVerticalPadding = 26.0;
    const double kInnerHorizontalPadding = 26.0;
    final appTheme = context.watch<AppOptionsCubit>().state.appTheme;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: appTheme.appGradients.authBackgroundGradient,
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
                        shadow: appTheme.appShadows.backgroundShadow,
                        color: appTheme.appColors.primaryBackground,
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
                              style: appTheme.appTextStyles.authHeadline,
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
                                    style: appTheme.appTextStyles.authBody,
                                  ),
                                  TextSpan(
                                    text: 'Term and privacy policy',
                                    style: appTheme.appTextStyles.authBodyBlue,
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
                                const AppTextField(
                                  hintText: 'Email Address',
                                  suffixIcon: Icon(
                                    Icons.mail_outline,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(height: 22),
                                const AppTextField(
                                  hintText: 'Password',
                                  suffixIcon: Icon(
                                    Icons.lock_outline,
                                    size: 24,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                RememberPassCheckBox(
                                  value: true,
                                  onPressed: (val) {},
                                ),
                                const SizedBox(height: 81),
                                Align(
                                  alignment: Directionality.of(context) ==
                                          TextDirection.ltr
                                      ? Alignment.centerRight
                                      : Alignment.centerLeft,
                                  child: Text(
                                    'Forget password',
                                    style:
                                        appTheme.appTextStyles.authForgotPass,
                                  ),
                                ),
                                const SizedBox(height: 30),
                                Row(
                                  children: [
                                    Expanded(
                                      child: AuthButton.fill(
                                        onPressed: () {},
                                        text: 'Login',
                                      ),
                                    ),
                                    const SizedBox(width: 5),
                                    Expanded(
                                      child: AuthButton.border(
                                        onPressed: () {},
                                        text: 'Register',
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 230),
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
