import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/utils/enums.dart';
import '../cubit/theme_cubit.dart';
import '../styles/app_colors.dart';

class ThemeSelectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme =
        AppColors.themeMap[AppColors.currentTheme]!; // Access current theme

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Selector",
          style: TextStyle(color: theme['text']),
        ),
        backgroundColor: theme['primary'],
      ),
      body: Center(
        child: DropdownButton<AppThemes>(
          value: AppColors.currentTheme,
          items: AppThemes.values.map((themeOption) {
            return DropdownMenuItem(
              value: themeOption,
              child: Text(
                themeOption.name.toUpperCase(),
                style: TextStyle(color: theme['text']),
              ),
            );
          }).toList(),
          onChanged: (themeOption) {
            if (themeOption != null) {
              context.read<ThemeCubit>().setTheme(themeOption); // Change theme
            }
          },
        ),
      ),
    );
  }
}
