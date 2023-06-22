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
    final appTheme = context.appTheme;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: appTheme.appGradients.authBackgroundGradient,
        ),
        child: BlocProvider(
          create: (context) => injector<AuthFieldsCubit>(),
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
                                      style:
                                          appTheme.appTextStyles.authBodyBlue,
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
                              child: BlocConsumer<AuthFieldsCubit,
                                  AuthFieldsState>(
                                listener: (context, state) {
                                  if (state is AuthSuccessful) {
                                    context.router
                                        .replaceAll([const HomeRoute()]);
                                  }
                                },
                                builder: (context, state) {
                                  if (state is AuthFieldsNormalState) {
                                    return _FieldsBody(currentState: state);
                                  } else {
                                    return const LoadingSpinner();
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FieldsBody extends StatelessWidget {
  const _FieldsBody({required this.currentState});
  final AuthFieldsNormalState currentState;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final authFieldsCubit = context.read<AuthFieldsCubit>();
    return Column(
      children: [
        AppTextField(
          enabled: !currentState.isValidating,
          isError: currentState.validatingEnabled,
          initialValue: currentState.email,
          errorText: _parseErrors(currentState.emailError),
          hintText: 'Email Address',
          suffixIcon: const Icon(
            Icons.mail_outline,
            size: 24,
          ),
          onChanged: authFieldsCubit.onChangeEmail,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 22),
        AppTextField(
          obscureText: true,
          enabled: !currentState.isValidating,
          isError: currentState.validatingEnabled,
          errorText: _parseErrors(currentState.passwordError),
          initialValue: currentState.password,
          hintText: 'Password',
          suffixIcon: const Icon(
            Icons.lock_outline,
            size: 24,
          ),
          onChanged: authFieldsCubit.onChangePassword,
          keyboardType: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 20),
        RememberPassCheckBox(
          value: true,
          onPressed: (val) {},
        ),
        const SizedBox(height: 81),
        Align(
          alignment: Directionality.of(context) == TextDirection.ltr
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: Text(
            'Forget password',
            style: appTheme.appTextStyles.authForgotPass,
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: AuthButton.fill(
                enabled: !currentState.isValidating,
                onPressed: () {
                  authFieldsCubit.logInUserWithEmailAndPassword(
                    currentState.email,
                    currentState.password,
                  );
                },
                text: 'Login',
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: AuthButton.border(
                enabled: !currentState.isValidating,
                onPressed: () {
                  authFieldsCubit.registerUserWithEmailAndPassword(
                    currentState.email,
                    currentState.password,
                  );
                },
                text: 'Register',
              ),
            ),
          ],
        ),
        const SizedBox(height: 230),
      ],
    );
  }

  String? _parseErrors(AuthErrorEnum error) {
    switch (error) {
      case AuthErrorEnum.invalidEmail:
        return 'Invalid email';
      case AuthErrorEnum.weakPassword:
        return 'Password is too weak';
      case AuthErrorEnum.valid:
        return null;
      default:
        return 'Unknown error occured';
    }
  }
}
