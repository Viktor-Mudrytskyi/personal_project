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
    return BlocProvider(
      create: (context) => injector<ResetPasswordCubit>(),
      child: BlocConsumer<ResetPasswordCubit, ResetPasswordState>(
        listener: (context, state) {
          state.mapOrNull();
        },
        builder: (context, state) {
          return state.maybeMap(
            form: (form) => _ModalBottomSheet(
              email: form.email,
              validatingEnabled: form.validatingEnabled,
              emailValidator: form.emailValidator,
              isDataSending: false,
            ),
            dataSending: (dataSending) => Stack(
              children: [
                _ModalBottomSheet(
                  email: dataSending.email,
                  validatingEnabled: dataSending.validatingEnabled,
                  emailValidator: dataSending.emailValidator,
                  isDataSending: true,
                ),
                Positioned.fill(
                  child: ColoredBox(
                    color: Colors.black.withOpacity(.2),
                    child: const LoadingSpinner(),
                  ),
                ),
              ],
            ),
            orElse: () => const Offstage(),
          );
        },
      ),
    );
  }
}

class _ModalBottomSheet extends StatelessWidget {
  const _ModalBottomSheet({
    required this.email,
    required this.validatingEnabled,
    required this.emailValidator,
    required this.isDataSending,
  });

  final String email;
  final bool validatingEnabled;
  final EmailValidator emailValidator;
  final bool isDataSending;

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
                  showError: validatingEnabled,
                  enabled: isDataSending,
                  errorText: emailValidator.getErrorText(),
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
                    context.removeAllFocus();
                    await cubit.sendResetPasswordEmail();
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
