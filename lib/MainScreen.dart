import 'package:flutter/material.dart';

import 'AdvisoryScreen.dart';
import 'DashboardScreen.dart';
import 'DiseaseDetectionScreen.dart';
import 'SettingsScreen.dart';
import 'YieldPredictionScreen.dart';


class MainScreen extends StatefulWidget {
  final Function(bool) toggleTheme;

  const MainScreen({super.key, required this.toggleTheme});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    // Pass toggleTheme to SettingsScreen
    _widgetOptions = <Widget>[
      const DashboardScreen(),
      const DiseaseDetectionScreen(),
      const YieldPredictionScreen(),
      const AdvisoryScreen(),
      SettingsScreen(toggleTheme: widget.toggleTheme),
    ];
  }

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
