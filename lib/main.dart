import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/screens/rise_screen.dart';
import 'package:multi_theme_app/screens/screen3.dart';
import 'package:multi_theme_app/screens/screen4.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: (_) => ThemeCubit()),
      ],
      child: Builder(
        builder: (context) {
          final theme = context.watch<ThemeCubit>().state;
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Toggle App',
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
              '/screen3': (context) => ThemeSelectorScreen(),
              '/screen4': (context) => Screen4(),
              '/riceScreen': (context) => RiseScreen(),
            },
          );
        },
      ),
    );
  }
}
