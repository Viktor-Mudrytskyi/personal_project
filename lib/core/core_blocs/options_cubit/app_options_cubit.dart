import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:personal_project/core/core.dart';

part 'app_options_state.dart';
part 'app_options_cubit.freezed.dart';

class AppOptionsCubit extends Cubit<AppOptionsState> {
  AppOptionsCubit() : super(AppOptionsState(appTheme: AppTheme.light));
}
