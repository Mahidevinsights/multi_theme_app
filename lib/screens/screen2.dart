import 'package:flutter/material.dart';
import '../styles/app_colors.dart';

class Screen2 extends StatelessWidget {
  final List<Map<String, String>> mutualFunds = [
    {"name": "Fund A", "nav": "\$102.30", "returns": "+8.5%"},
    {"name": "Fund B", "nav": "\$89.20", "returns": "+6.2%"},
    {"name": "Fund C", "nav": "\$120.40", "returns": "+7.8%"},
  ];

  @override
  Widget build(BuildContext context) {
    final theme =
        AppColors.themeMap[AppColors.currentTheme]!; // Access current theme

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mutual Funds",
          style: TextStyle(color: theme['text']),
        ),
        backgroundColor: theme['primary'],
      ),
      body: ListView.builder(
        itemCount: mutualFunds.length,
        itemBuilder: (context, index) {
          final fund = mutualFunds[index];
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: theme['background'],
              border: Border.all(
                color: fund["returns"]!.startsWith('-')
                    ? Colors.red
                    : Colors.green,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: ListTile(
              title: Text(
                fund["name"]!,
                style: TextStyle(
                  color: theme['headingText'],
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "NAV: ${fund["nav"]}",
                style: TextStyle(color: theme['subheadingText']),
              ),
              trailing: Text(
                fund["returns"]!,
                style: TextStyle(
                  color: fund["returns"]!.startsWith('-')
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
          Navigator.pop(context); // Go back to the previous screen
        },
        child: Icon(Icons.arrow_back, color: theme['text']),
      ),
    );
  }
}
