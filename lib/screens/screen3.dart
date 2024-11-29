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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/riceScreen');
            },
            icon: Icon(Icons.apartment_rounded),
          )
        ],
        title: Text(
          "Theme Selector",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: AppColors.primary, // Border color
              width: 2.0, // Border width
            ),
            borderRadius: BorderRadius.circular(8.0), // Rounded corners
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: DropdownButton<AppThemes>(
            value: AppColors.currentTheme,
            items: AppThemes.values.map((themeOption) {
              return DropdownMenuItem(
                value: themeOption,
                child: Text(
                  themeOption.name.toUpperCase(),
                  style: TextStyle(color: AppColors.primary),
                ),
              );
            }).toList(),
            onChanged: (themeOption) {
              if (themeOption != null) {
                context
                    .read<ThemeCubit>()
                    .setTheme(themeOption); // Change theme
              }
            },
          ),
        ),
      ),
    );
  }
}
