import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/styles/app_images.dart';
import '../styles/app_colors.dart';
import '../utils/enums.dart';

class ThemeCubit extends Cubit<AppThemes> {
  ThemeCubit() : super(AppThemes.light);

  void setTheme(AppThemes theme) {
    // Update current theme
    AppColors.currentTheme = theme;
    AppImages.currentTheme = theme;
    emit(theme);
  }
}
