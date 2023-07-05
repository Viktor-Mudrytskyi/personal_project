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
                                  _stateListener(
                                    context: context,
                                    state: state,
                                    appTheme: appTheme,
                                  );
                                },
                                builder: (context, state) {
                                  return _FieldsBody(currentState: state);
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

  void _stateListener({
    required BuildContext context,
    required AuthFieldsState state,
    required AppThemeData appTheme,
  }) {
    if (state.firebaseError != AuthErrorEnum.valid) {
      UiUtils.showOverlaySnackBar(
        context: context,
        content: Text(
          state.firebaseError.name,
          style: appTheme.appTextStyles.login.copyWith(
            decoration: TextDecoration.none,
          ),
        ),
      );
    }
    if (state.biometricsError != AuthErrorEnum.valid) {
      showDialog(
        context: context,
        builder: (context) => StandartDialog.info(
          label: AuthUtils.parseAuthErrors(state.biometricsError),
        ),
      );
    }
    if (state.isAuthSuccessful) {
      context.removeAllFocus();
      context.router.replace(const HomeRoute());
    }
  }
}

class _FieldsBody extends StatelessWidget {
  const _FieldsBody({required this.currentState});
  final AuthFieldsState currentState;

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final authFieldsCubit = context.watch<AuthFieldsCubit>();
    return Column(
      children: [
        AppTextField(
          enabled: !authFieldsCubit.isCurrentlyValidating,
          showError: authFieldsCubit.isValidatingEnabled,
          initialValue: currentState.email,
          errorText: AuthUtils.parseAuthErrors(currentState.emailError),
          hintText: 'Email Address',
          suffixIcon: const Icon(
            Icons.mail_outline,
            size: 24,
          ),
          onChanged: authFieldsCubit.onChangeEmail,
          keyboardType: TextInputType.emailAddress,
        ),
        const SizedBox(height: 7),
        AppTextField(
          obscureText: true,
          enabled: !authFieldsCubit.isCurrentlyValidating,
          showError: authFieldsCubit.isValidatingEnabled,
          errorText: AuthUtils.parseAuthErrors(currentState.passwordError),
          initialValue: currentState.password,
          hintText: 'Password',
          suffixIcon: const Icon(
            Icons.lock_outline,
            size: 24,
          ),
          onChanged: authFieldsCubit.onChangePassword,
          keyboardType: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 5),
        RememberPassCheckBox(
          value: currentState.isRememberMe,
          isActive: !authFieldsCubit.isCurrentlyValidating,
          onPressed: (val) {
            authFieldsCubit.onRememberMeChange(val!);
          },
        ),
        const SizedBox(height: 81),
        Align(
          alignment: context.isLeftToRight
              ? Alignment.centerRight
              : Alignment.centerLeft,
          child: InkWell(
            onTap: () async {
              await showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (modalContext) => const ResetPasswordBottomSheet(),
              );
            },
            child: Text(
              'Forget password',
              style: appTheme.appTextStyles.authForgotPass,
            ),
          ),
        ),
        const SizedBox(height: 30),
        Row(
          children: [
            Expanded(
              child: AuthButton.fill(
                enabled: !authFieldsCubit.isCurrentlyValidating,
                onPressed: () async {
                  context.removeAllFocus();
                  await authFieldsCubit.logInUserWithEmailAndPassword(
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
                enabled: !authFieldsCubit.isCurrentlyValidating,
                onPressed: () async {
                  context.removeAllFocus();
                  await authFieldsCubit.registerUserWithEmailAndPassword(
                    currentState.email,
                    currentState.password,
                  );
                },
                text: 'Register',
              ),
            ),
          ],
        ),
        const SizedBox(height: 21),
        Text(
          'Login wit touch ID',
          style: appTheme.appTextStyles.authSmall,
        ),
        const SizedBox(height: 18),
        FingerPrintButton(
          onTap: () async {
            context.removeAllFocus();
            await authFieldsCubit.attemptFingerprint();
          },
        ),
        const SizedBox(height: 11),
        Text(
          'or connect with',
          style: appTheme.appTextStyles.authSmall,
        ),
        const SizedBox(height: 61),
        const SizedBox(height: 30),
      ],
    );
  }
}
