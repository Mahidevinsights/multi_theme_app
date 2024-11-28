import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/utils/enums.dart';
import '../styles/app_colors.dart';

class ThemeCubit extends Cubit<AppThemes> {
  ThemeCubit() : super(AppThemes.light);

  void setTheme(AppThemes theme) {
    AppColors.currentTheme = theme; // Update current theme in AppColors
    emit(theme); // Notify listeners
  }
}
