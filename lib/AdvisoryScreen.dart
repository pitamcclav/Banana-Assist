import 'package:flutter/material.dart';

class AdvisoryScreen extends StatelessWidget {
  const AdvisoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advisory Services'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          _buildAdvisoryCard('Watering Tips', 'Water your plants twice a week.'),
          _buildAdvisoryCard('Soil Management', 'Use compost to improve soil fertility.'),
        ],
      ),
    );
  }

  Widget _buildAdvisoryCard(String title, String description) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Icon(Icons.info, color: Colors.green),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
      ),
    );
  }
}
