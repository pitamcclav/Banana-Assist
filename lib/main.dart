import 'package:flutter/material.dart';

import 'MainScreen.dart';


void main() {
  runApp(const BananaAssistApp());
}

class BananaAssistApp extends StatefulWidget {
  const BananaAssistApp({super.key});

  @override
  _BananaAssistAppState createState() => _BananaAssistAppState();
}

class _BananaAssistAppState extends State<BananaAssistApp> {
  ThemeMode _themeMode = ThemeMode.light;

  // Function to toggle between light and dark mode
  void toggleTheme(bool isDarkMode) {
    setState(() {
      _themeMode = isDarkMode ? ThemeMode.dark : ThemeMode.light;
    });
  }

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

        textTheme: const TextTheme(
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
      darkTheme: ThemeData(
        // Adjusted color scheme
        primaryColor: const Color(0xFF4CAF50), // Banana green
        hintColor: const Color(0xFFFFEB3B), // Banana yellow
        scaffoldBackgroundColor: const Color(0xFF121212), // Dark grey background

        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1B5E20), // Darker green for AppBar
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),

        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 16),
          bodyMedium: TextStyle(color: Colors.white70, fontSize: 14),
          titleLarge: TextStyle(
            color: Color(0xFF1B5E20),
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),

        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFF1B5E20), // Green for selected items
          unselectedItemColor: Colors.grey, // Grey for unselected items
          backgroundColor: Colors.black, // Black background for the nav bar
        ),
      ),
      themeMode: _themeMode, // Dynamic theme mode
      home: MainScreen(toggleTheme: toggleTheme),
    );
  }
}


