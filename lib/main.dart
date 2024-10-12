import 'package:flutter/material.dart';

import 'AdvisoryScreen.dart';
import 'DashboardScreen.dart';
import 'DiseaseDetectionScreen.dart';
import 'SettingsScreen.dart';
import 'YieldPredictionScreen.dart';

void main() {
  runApp(const BananaAssistApp());
}

class BananaAssistApp extends StatelessWidget {
  const BananaAssistApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banana Assist',
      theme: ThemeData(
        // Adjusted color scheme
        primaryColor: const Color(0xFF4CAF50), // Banana green
        hintColor: const Color(0xFFFFEB3B), // Banana yellow
        scaffoldBackgroundColor: const Color(0xFFF4F4F4), // Light beige background

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF388E3C), // Darker green for AppBar
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

        textTheme:  const TextTheme(
          bodyLarge: TextStyle(color: Colors.black87, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
          titleLarge: TextStyle(
            color: Color(0xFF388E3C),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF388E3C), // Green for selected items
          unselectedItemColor: Colors.grey, // Grey for unselected items
          backgroundColor: Colors.white, // White background for the nav bar
        ),
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const DashboardScreen(),
    const DiseaseDetectionScreen(),
    const YieldPredictionScreen(),
    AdvisoryScreen(),
    SettingsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Banana Assist'),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Detect Disease',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Yield Prediction',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Advisory',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
