import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme/theme.dart';

part 'app_options_state.dart';

class AppOptionsCubit extends Cubit<AppOptionsState> {
  AppOptionsCubit() : super(AppOptionsState(appTheme: AppTheme.light));

  void changeTheme(AppThemeData data) {
    emit(AppOptionsState(appTheme: data));
  }
}
