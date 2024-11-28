import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class Screen1 extends StatelessWidget {
  final List<Map<String, String>> stocks = [
    {"name": "Stock A", "price": "\$120.50", "change": "+1.2%"},
    {"name": "Stock B", "price": "\$90.25", "change": "-0.5%"},
    {"name": "Stock C", "price": "\$45.10", "change": "+0.8%"},
  ];

  @override
  Widget build(BuildContext context) {
    final theme =
        AppColors.themeMap[AppColors.currentTheme]!; // Access current theme

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stock List",
          style: TextStyle(color: theme['text']),
        ),
        backgroundColor: theme['primary'],
        actions: [
          IconButton(
            icon: Icon(Icons.color_lens, color: theme['text']),
            onPressed: () {
              Navigator.pushNamed(context, '/theme_selector');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: stocks.length,
        itemBuilder: (context, index) {
          final stock = stocks[index];
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: theme['background'],
              border: Border.all(
                color: stock["change"]!.startsWith('-')
                    ? Colors.red
                    : Colors.green,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                stock["name"]!,
                style: TextStyle(
                  color: theme['headingText'],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Price: ${stock["price"]}",
                style: TextStyle(color: theme['subheadingText']),
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: theme['primary'],
        onPressed: () {
          Navigator.pushNamed(context, '/screen2');
        },
        child: Icon(Icons.arrow_forward, color: theme['text']),
      ),
    );
  }
}
