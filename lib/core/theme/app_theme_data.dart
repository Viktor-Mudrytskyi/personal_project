import '../core.dart';

class AppThemeData {
  final AppColors appColors;
  final AppGradients appGradients;
  final AppShadows appShadows;
  final AppTextStyles appTextStyles;

  const AppThemeData({
    required this.appShadows,
    required this.appColors,
    required this.appGradients,
    required this.appTextStyles,
  });

  factory AppThemeData.light() {
    return AppThemeData(
      appColors: AppColors.light(),
      appGradients: AppGradients.light(),
      appShadows: AppShadows.light(),
      appTextStyles: AppTextStyles.light(),
    );
  }
  factory AppThemeData.dark() {
    return AppThemeData(
      appColors: AppColors.dark(),
      appGradients: AppGradients.light(),
      appShadows: AppShadows.light(),
      appTextStyles: AppTextStyles.light(),
    );
  }
}
