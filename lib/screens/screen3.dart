import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/utils/enums.dart';
import '../cubit/theme_cubit.dart';
import '../styles/app_colors.dart';

class ThemeSelectorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Theme Selector",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: DropdownButton<AppThemes>(
          value: AppColors.currentTheme,
          items: AppThemes.values.map((theme) {
            return DropdownMenuItem(
              value: theme,
              child: Text(
                theme.name.toUpperCase(),
                style: TextStyle(color: AppColors.textColor),
              ),
            );
          }).toList(),
          onChanged: (theme) {
            if (theme != null) {
              context.read<ThemeCubit>().setTheme(theme); // Change theme
            }
          },
        ),
      ),
    );
  }
}
