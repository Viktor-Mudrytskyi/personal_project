import 'package:bloc/bloc.dart';

import '../../../../../core/core.dart';
import '../../../../domain/domain.dart';

part 'auth_fields_state.dart';

class AuthFieldsCubit extends Cubit<AuthFieldsState> {
  final AuthUseCase _authUseCase;
  final BiometricsService _biometricsService;
  final SecureStorageManager _storage;

  AuthFieldsCubit({
    required AuthUseCase authUseCase,
    required BiometricsService biometricsService,
    required SecureStorageManager storage,
  })  : _authUseCase = authUseCase,
        _biometricsService = biometricsService,
        _storage = storage,
        super(_empty);

  Future<void> onInit() async {
    await attemptFingerprint(isInit: true);
  }

  void onChangeEmail(String email) {
    formState.emailValidator.update(email);
    emit(
      formState.copyWith(
        email: email,
      ),
    );
  }

  void onChangePassword(String password) {
    formState.passwordValidator.update(password);
    emit(formState.copyWith(
      password: password,
    ));
  }

  Future<void> registerUserWithEmailAndPassword() async {
    if (_isLoginPasswordValid()) {
      final oldFormState = formState;
      emit(
        DataSendingAuthFieldsState(
          email: oldFormState.email,
          password: oldFormState.password,
          emailValidator: oldFormState.emailValidator,
          passwordValidator: oldFormState.passwordValidator,
          isValidatingEnabled: oldFormState.isValidatingEnabled,
        ),
      );

      final result = await _authUseCase.registerUserWEmailAndPassword(
        email: oldFormState.email,
        password: oldFormState.password,
      );

      result.fold(
        (l) {
          emit(
            ErrorAuthFieldsState(
              errorMessage: FirebaseAuthExceptionParser().parse(l),
            ),
          );
          emit(oldFormState);
        },
        (r) async {
          emit(SuccessAuthFieldsState());
          await _writeToStorage(
            oldFormState.email,
            oldFormState.password,
          );
          await _authUseCase.sendEmailVerification();
        },
      );
    } else {
      _enableValidation();
    }
  }

  Future<void> logInUserWithEmailAndPassword() async {
    if (_isLoginPasswordValid()) {
      final oldFormState = formState;
      emit(
        DataSendingAuthFieldsState(
          email: oldFormState.email,
          password: oldFormState.password,
          emailValidator: oldFormState.emailValidator,
          passwordValidator: oldFormState.passwordValidator,
          isValidatingEnabled: oldFormState.isValidatingEnabled,
        ),
      );

      final result = await _authUseCase.signInWEmailAndPassword(
        email: oldFormState.email,
        password: oldFormState.password,
      );

      result.fold(
        (l) {
          emit(
            ErrorAuthFieldsState(
              errorMessage: FirebaseAuthExceptionParser().parse(l),
            ),
          );
          emit(oldFormState);
        },
        (r) async {
          emit(SuccessAuthFieldsState());
          await _writeToStorage(
            oldFormState.email,
            oldFormState.password,
          );
        },
      );
    } else {
      _enableValidation();
    }
  }

  Future<void> attemptFingerprint({bool isInit = false}) async {
    final emailFromStorage = await _storage.readEmail();
    final passwordFromStorage = await _storage.readPassword();
    final oldFormState = formState;

    if (emailFromStorage == null || passwordFromStorage == null) {
      if (isInit) {
        return;
      }
      emit(
        BiometricErrorAuthFieldsState(
            errorMessage: 'First login with email and password'),
      );
      emit(oldFormState);

      return;
    }

    if (!(await _biometricsService.isDeviceSupported)) {
      if (isInit) {
        return;
      }
      emit(
        BiometricErrorAuthFieldsState(
            errorMessage: 'Biometrics is not supported'),
      );
      emit(oldFormState);
      return;
    }

    if (!(await _biometricsService.isFingerPrintEnrolled)) {
      if (isInit) {
        return;
      }
      emit(
        BiometricErrorAuthFieldsState(
            errorMessage: 'No fingerprint registered'),
      );
      emit(oldFormState);
      return;
    }
    try {
      final res = await _biometricsService.authenticateWithFingerPrint();
      onChangeEmail(emailFromStorage);
      onChangePassword(passwordFromStorage);
      if (res) {
        await logInUserWithEmailAndPassword();
      }
    } catch (e) {
      emit(
        ErrorAuthFieldsState(errorMessage: 'Something went wrong'),
      );
      emit(oldFormState);
    }
  }

  bool _isLoginPasswordValid() {
    return formState.emailValidator.isValid &&
        formState.passwordValidator.isValid;
  }

  void _enableValidation() {
    emit(formState.copyWith(isValidatingEnabled: true));
  }

  Future<void> _writeToStorage(
    String email,
    String password,
  ) async {
    await _storage.writeEmail(email);
    await _storage.writePassword(password);
  }

  static AuthFieldsState get _empty => FormAuthFieldsState(
        email: '',
        password: '',
        emailValidator: EmailValidator(''),
        passwordValidator: PasswordValidator(''),
        isValidatingEnabled: false,
      );

  FormAuthFieldsState get formState => state.maybeMap(
        orElse: () => throw Exception('Current state is not form state'),
        form: (form) => form,
      );
}
