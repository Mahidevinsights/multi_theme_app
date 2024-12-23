import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_theme_app/cubit/theme_cubit.dart';
import 'package:multi_theme_app/utils/enums.dart';
import '../styles/app_colors.dart';

class Screen1 extends StatelessWidget {
  final List<Map<String, String>> stocks = [
    {"name": "Stock A", "price": "\$120.50", "change": "+1.2%"},
    {"name": "Stock B", "price": "\$90.25", "change": "-0.5%"},
    {"name": "Stock C", "price": "\$45.10", "change": "+0.8%"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stocks",
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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: stocks.length,
              itemBuilder: (context, index) {
                final stock = stocks[index];
                return Container(
                  decoration: BoxDecoration(
                    color: AppColors.foreGround,
                    border: Border.all(
                      color: stock["change"]!.startsWith('-')
                          ? Colors.red.withOpacity(0.5)
                          : Colors.green.withOpacity(0.5),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  child: ListTile(
                    title: Text(
                      stock["name"]!,
                      style: TextStyle(
                        color: AppColors.primaryText,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Price: ${stock["price"]}",
                      style: TextStyle(color: AppColors.secondaryText),
                    ),
                    trailing: Text(
                      stock["change"]!,
                      style: TextStyle(
                        color: stock["change"]!.startsWith('-')
                            ? Colors.red
                            : Colors.green,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/screen2');
              },
              child: Text(
                "Go to Screen 2",
                style: TextStyle(color: AppColors.primaryText),
              ),
            ),
          ),
        ],
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
