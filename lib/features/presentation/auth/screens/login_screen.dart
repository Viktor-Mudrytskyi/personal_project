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
    return BlocProvider(
      create: (context) => injector<AuthFieldsCubit>()..onInit(),
      child: BlocConsumer<AuthFieldsCubit, AuthFieldsState>(
        listener: (context, state) {
          state.mapOrNull(
            error: (error) => showAdaptiveDialog(
              context: context,
              builder: (context) => AlertDialog.adaptive(
                content: Text(error.errorMessage),
              ),
            ),
            biometricError: (biometricError) => showAdaptiveDialog(
              context: context,
              builder: (context) => AlertDialog.adaptive(
                content: Text(biometricError.errorMessage),
              ),
            ),
            success: (success) {
              context.read<UserBloc>().add(ResolveStateUserEvent());
              context.router.replaceAll([const HomeRoute()]);
            },
          );
        },
        buildWhen: (previous, current) => current.maybeMap(
          orElse: () => false,
          form: (form) => true,
          dataSending: (dataSending) => true,
        ),
        builder: (context, state) {
          final isDataSending = state.maybeMap(
            orElse: () => false,
            dataSending: (dataSending) => true,
          );
          return Scaffold(
            body: Stack(
              children: [
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: appTheme.appGradients.authBackgroundGradient,
                  ),
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
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0,
                                      ),
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
                                        style:
                                            appTheme.appTextStyles.authHeadline,
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
                                              style: appTheme
                                                  .appTextStyles.authBody,
                                            ),
                                            TextSpan(
                                              text: 'Term and privacy policy',
                                              style: appTheme
                                                  .appTextStyles.authBodyBlue,
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
                                      child: state.maybeMap(
                                        form: (form) => _FieldsBody(
                                          email: form.email,
                                          emailValidator: form.emailValidator,
                                          password: form.password,
                                          passwordValidator:
                                              form.passwordValidator,
                                          isValidatingEnabled:
                                              form.isValidatingEnabled,
                                        ),
                                        dataSending: (dataSending) =>
                                            _FieldsBody(
                                          email: dataSending.email,
                                          emailValidator:
                                              dataSending.emailValidator,
                                          password: dataSending.password,
                                          passwordValidator:
                                              dataSending.passwordValidator,
                                          isValidatingEnabled:
                                              dataSending.isValidatingEnabled,
                                        ),
                                        orElse: () => const Offstage(),
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
                if (isDataSending)
                  Positioned.fill(
                    child: ColoredBox(
                      color: Colors.black.withOpacity(.2),
                      child: const LoadingSpinner(),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _FieldsBody extends StatelessWidget {
  final String email;
  final String password;
  final EmailValidator emailValidator;
  final PasswordValidator passwordValidator;
  final bool isValidatingEnabled;

  const _FieldsBody({
    required this.email,
    required this.password,
    required this.emailValidator,
    required this.passwordValidator,
    required this.isValidatingEnabled,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    final authFieldsCubit = context.read<AuthFieldsCubit>();
    return Column(
      children: [
        AppTextField(
          showError: isValidatingEnabled,
          initialValue: email,
          errorText: emailValidator.getErrorText(),
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
          showError: isValidatingEnabled,
          errorText: passwordValidator.getErrorText(),
          initialValue: password,
          hintText: 'Password',
          suffixIcon: const Icon(
            Icons.lock_outline,
            size: 24,
          ),
          onChanged: authFieldsCubit.onChangePassword,
          keyboardType: TextInputType.visiblePassword,
        ),
        const SizedBox(height: 100),
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
                onPressed: () async {
                  context.removeAllFocus();
                  await authFieldsCubit.logInUserWithEmailAndPassword();
                },
                text: 'Login',
              ),
            ),
            const SizedBox(width: 5),
            Expanded(
              child: AuthButton.border(
                onPressed: () async {
                  context.removeAllFocus();
                  await authFieldsCubit.registerUserWithEmailAndPassword();
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
