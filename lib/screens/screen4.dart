import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:multi_theme_app/cubit/theme_cubit.dart';
import 'package:multi_theme_app/styles/app_images.dart';
import 'package:multi_theme_app/utils/enums.dart';
import '../styles/app_colors.dart';

class Screen4 extends StatelessWidget {
  final List<String> images = [
    AppImages.mic,
    AppImages.search,
    AppImages.search,
    AppImages.statePic,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Image Grid",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 38.0,
            mainAxisSpacing: 38.0,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: index < 3
                  ? Image.asset(
                      images[index],
                      fit: BoxFit.cover,
                    )
                  : SvgPicture.asset(images[index]),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        onPressed: () {
          final theme = AppColors.currentTheme == AppThemes.dark
              ? AppThemes.light
              : AppThemes.dark;
          context.read<ThemeCubit>().setTheme(theme);
        },
        child: Icon(Icons.brightness_6, color: AppColors.textColor),
      ),
    );
  }
}
