import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/screens/screen3.dart';
import 'package:multi_theme_app/utils/enums.dart';
import 'cubit/theme_cubit.dart';
import 'screens/screen1.dart';
import 'screens/screen2.dart';
import 'styles/app_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, AppThemes>(
        builder: (context, theme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primaryColor: AppColors.primary,
              scaffoldBackgroundColor: AppColors.background,
              textTheme: TextTheme(
                bodyMedium: TextStyle(color: AppColors.primary),
              ),
            ),
            initialRoute: '/',
            routes: {
              '/': (context) => Screen1(),
              '/screen2': (context) => Screen2(),
              '/theme_selector': (context) => ThemeSelectorScreen(),
            },
          );
        },
      ),
    );
  }
}
