import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Farm Overview',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildSummaryCard('Health Status', 'Healthy', Icons.eco),
                _buildSummaryCard('Latest Yield', '14 tons', Icons.show_chart),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Recommendations',
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildRecommendationCard('Apply mulch to improve soil quality.'),
                  _buildRecommendationCard('Monitor for Panama disease symptoms.'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSummaryCard(String title, String value, IconData icon) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Icon(icon, color: Colors.green, size: 40),
            const SizedBox(height: 10),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(value, style: const TextStyle(fontSize: 18, color: Colors.black)),
          ],
        ),
      ),
    );
  }

  Widget _buildRecommendationCard(String text) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: const Icon(Icons.lightbulb, color: Colors.green),
        title: Text(text),
      ),
    );
  }
}
