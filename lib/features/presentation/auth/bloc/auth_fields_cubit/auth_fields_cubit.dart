import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_fields_state.dart';
part 'auth_fields_cubit.freezed.dart';

class AuthFieldsCubit extends Cubit<AuthFieldsState> {
  AuthFieldsCubit() : super(const AuthFieldsState(email: '', password: ''));
}
