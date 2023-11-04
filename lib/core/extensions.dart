import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core.dart';

extension AppThemeFromContext on BuildContext {
  AppThemeData get appTheme => watch<AppOptionsCubit>().state.appTheme;

  TextDirection get textDirection => Directionality.of(this);

  ///Shows if text direction [Directionality.of(context)] is [TextDirection.ltr]
  bool get isLeftToRight => textDirection == TextDirection.ltr;

  void removeAllFocus() {
    FocusScope.of(this).unfocus();
  }
}

extension NullOrEmptyString on String? {
  bool isNullOrEmpty() {
    return (this ?? '').isEmpty;
  }

  bool isNotNullOrEmpty() {
    return (this ?? '').isNotEmpty;
  }

  bool isNullOrEmptyTrim() {
    return (this ?? '').trim().isEmpty;
  }

  bool isNotNullOrEmptyTrim() {
    return (this ?? '').trim().isNotEmpty;
  }
}
