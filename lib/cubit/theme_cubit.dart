import 'package:flutter_bloc/flutter_bloc.dart';
import '../styles/app_colors.dart';
import '../utils/enums.dart';

class ThemeCubit extends Cubit<AppThemes> {
  ThemeCubit() : super(AppThemes.light);

  void setTheme(AppThemes theme) {
    AppColors.currentTheme = theme; // Update current theme
    emit(theme); // Notify listeners
  }
}
