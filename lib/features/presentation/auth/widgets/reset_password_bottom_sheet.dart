import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../features.dart';

class ResetPasswordBottomSheet extends StatelessWidget {
  const ResetPasswordBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final appTheme = context.appTheme;
    return BlocProvider(
      create: (context) => injector<ResetPasswordCubit>(),
      child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
        listener: (context, state) {
          if (state is ResetPasswordSuccessState) {
            context.router.pop();
          }
          if (state is MyResetPasswordState) {
            if (state.firebaseError != AuthErrorEnum.valid) {
              UiUtils.showOverlaySnackBar(
                context: context,
                content: Text(
                  state.firebaseError.name,
                  style: appTheme.appTextStyles.login
                      .copyWith(decoration: TextDecoration.none),
                ),
              );
            }
          }
        },
        builder: (context, state) {
          return _ModalBottomSheet(
            email: state.email,
            isValidating: state.isValidating,
            validatingEnabled: state.validatingEnabled,
            emailError: state.emailError,
          );
        },
      ),
    );
  }
}

class _ModalBottomSheet extends StatelessWidget {
  const _ModalBottomSheet({
    required this.email,
    required this.isValidating,
    required this.validatingEnabled,
    required this.emailError,
  });

  final String email;
  final bool isValidating;
  final bool validatingEnabled;
  final AuthErrorEnum emailError;

  @override
  Widget build(BuildContext context) {
    const double kVerticalPadding = 26.0;
    const double kHorizontalPadding = 26.0;
    final cubit = context.read<ResetPasswordCubit>();
    return SafeArea(
      child: SingleChildScrollView(
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 100),
          padding: MediaQuery.of(context).viewInsets,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: kHorizontalPadding,
              vertical: kVerticalPadding,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppTextField(
                  isError: validatingEnabled,
                  enabled: !isValidating,
                  errorText: AuthUtils.parseAuthErrors(emailError),
                  initialValue: email,
                  hintText: 'Email',
                  suffixIcon: const Icon(
                    Icons.mail_outline,
                    size: 24,
                  ),
                  onChanged: cubit.onChangeEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 5),
                AuthButton.fill(
                  onPressed: () async {
                    context.removeFocus();
                    await cubit.sendResetPasswordEmail(email);
                  },
                  text: 'Send password',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
