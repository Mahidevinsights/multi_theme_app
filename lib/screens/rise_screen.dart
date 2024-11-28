import 'package:flutter/material.dart';
import 'package:multi_theme_app/styles/app_colors.dart';

class RiseScreen extends StatelessWidget {
  const RiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.depth,
        elevation: 0,
        title: Text(
          'Portfolio',
          style: TextStyle(color: AppColors.primaryText),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: AppColors.textColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.account_circle, color: AppColors.primaryText),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: AppColors.background,
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // Indices Row (Sensex and Nifty)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'SENSEX\n65,668.90 (-0.99%)',
                style:
                    TextStyle(color: AppColors.negativeIndicator, fontSize: 16),
              ),
              Text(
                'NIFTY\n65,668.90 (+1.05%)',
                style:
                    TextStyle(color: AppColors.positiveIndicator, fontSize: 16),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Portfolio Summary
          Container(
            decoration: BoxDecoration(
              color: AppColors.foreGround,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'View Analysis',
                  style: TextStyle(color: AppColors.primary, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  'Current Value of Stocks',
                  style: TextStyle(color: AppColors.secondaryText),
                ),
                Text(
                  '₹15,50,10,750.00',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Invested Value',
                  style: TextStyle(color: AppColors.secondaryText),
                ),
                Text(
                  '₹5,10,750.00',
                  style: TextStyle(
                    color: AppColors.primaryText,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Day P&L',
                  style: TextStyle(color: AppColors.primaryText),
                ),
                Text(
                  '+₹50,127.65 (+10.59%)',
                  style: TextStyle(
                    color: AppColors.positiveIndicator,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Overall P&L',
                  style: TextStyle(color: AppColors.secondaryText),
                ),
                Text(
                  '+₹10,32,127.65 (+100.59%)',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          // Stock List Header
          Text(
            'All (20)',
            style: TextStyle(color: AppColors.primaryText, fontSize: 16),
          ),
          SizedBox(height: 8),
          // Stock Cards
          StockCard(
            stockName: 'HDFCLIFE',
            avgPrice: '₹1,500.85',
            ltp: '₹1,500.85',
            qty: '500/1,000',
            dayPnl: '+₹1,10,100.50 (+0.25%)',
            invested: '₹1,05,000.85',
            current: '₹1,85,000.85',
            pnlColor: Colors.green,
          ),
          StockCard(
            stockName: 'ICICIBANK',
            avgPrice: '₹1,500.85',
            ltp: '₹1,500.85',
            qty: '500/1,000',
            dayPnl: '-₹10,100.50 (-0.25%)',
            invested: '₹1,05,000.85',
            current: '₹1,85,000.85',
            pnlColor: Colors.red,
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.depth,
        unselectedItemColor: AppColors.secondaryText,
        selectedItemColor: AppColors.primary,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart),
            label: 'Portfolio',
          ),
        ],
      ),
    );
  }
}

class StockCard extends StatelessWidget {
  final String stockName, avgPrice, ltp, qty, dayPnl, invested, current;
  final Color pnlColor;

  const StockCard({
    required this.stockName,
    required this.avgPrice,
    required this.ltp,
    required this.qty,
    required this.dayPnl,
    required this.invested,
    required this.current,
    required this.pnlColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.foreGround,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            stockName,
            style: TextStyle(color: AppColors.primaryText, fontSize: 18),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Avg Price: $avgPrice',
                  style: TextStyle(color: AppColors.secondaryText)),
              Text('LTP: $ltp', style: TextStyle(color: AppColors.primaryText)),
            ],
          ),
          SizedBox(height: 4),
          Text('Qty: $qty', style: TextStyle(color: AppColors.secondaryText)),
          SizedBox(height: 4),
          Text('Day P&L: $dayPnl', style: TextStyle(color: pnlColor)),
          SizedBox(height: 4),
          Text('Invested: $invested',
              style: TextStyle(color: AppColors.secondaryText)),
          Text('Current: $current',
              style: TextStyle(color: AppColors.primaryText)),
        ],
      ),
    );
  }
}
