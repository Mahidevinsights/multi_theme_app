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
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mutual Funds",
          style: TextStyle(color: AppColors.textColor),
        ),
        backgroundColor: AppColors.primary,
      ),
      body: ListView.builder(
        itemCount: mutualFunds.length,
        itemBuilder: (context, index) {
          final fund = mutualFunds[index];
          return Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: AppColors.background,
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
                  color: AppColors.headingText,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "NAV: ${fund["nav"]}",
                style: TextStyle(color: AppColors.subheadingText),
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
        backgroundColor: AppColors.primary,
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, color: AppColors.textColor),
      ),
    );
  }
}
