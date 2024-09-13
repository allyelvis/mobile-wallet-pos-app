import 'package:flutter/material.dart';
import 'transfer_screen.dart';
import 'cashout_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Display User's Balance
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome, User', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Text('Balance: 100,000 BIF', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          
          // Quick Action Buttons
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            padding: EdgeInsets.all(20),
            children: [
              _buildQuickActionButton(context, 'Transfer', Icons.send, TransferScreen()),
              _buildQuickActionButton(context, 'Cashout', Icons.money, CashoutScreen()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildQuickActionButton(BuildContext context, String title, IconData icon, Widget screen) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => screen)),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(icon, size: 30),
          ),
          SizedBox(height: 5),
          Text(title),
        ],
      ),
    );
  }
}
