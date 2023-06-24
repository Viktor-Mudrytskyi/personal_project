import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core.dart';

extension AppThemeFromContext on BuildContext {
  AppThemeData get appTheme => watch<AppOptionsCubit>().state.appTheme;

  void removeFocus() {
    FocusScope.of(this).unfocus();
  }
}
