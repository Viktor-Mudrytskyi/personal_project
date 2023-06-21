part of 'auth_fields_cubit.dart';

@freezed
class AuthFieldsState with _$AuthFieldsState {
  const factory AuthFieldsState({
    required String email,
    required String password,
  }) = _AuthFieldsState;
}
