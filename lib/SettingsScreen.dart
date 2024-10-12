import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final Function(bool) toggleTheme;
  const SettingsScreen({super.key, required this.toggleTheme});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  bool _notificationsEnabled = true;
  String _selectedLanguage = 'English';
  bool _autoSync = true;
  bool _biometricLoginEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[

          // User Profile
          ListTile(
            title: Text('User Profile'),
            subtitle: Text('Manage your profile settings'),
            leading: Icon(Icons.person),
            onTap: () {
              // Navigate to profile screen
            },
          ),

          // Account Settings
          ListTile(
            title: Text('Account Settings'),
            subtitle: Text('Manage your account information'),
            leading: Icon(Icons.account_circle),
            onTap: () {
              // Navigate to account settings
            },
          ),

          // Language Preferences
          ListTile(
            title: Text('Language'),
            subtitle: Text('Select your preferred language'),
            leading: Icon(Icons.language),
            trailing: DropdownButton<String>(
              value: _selectedLanguage,
              items: <String>['English', 'Luganda', 'Swahili'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  _selectedLanguage = value!;
                });
              },
            ),
          ),

          // Data Sync & Storage
          SwitchListTile(
            title: Text('Auto Sync Data'),
            value: _autoSync,
            onChanged: (bool value) {
              setState(() {
                _autoSync = value;
              });
            },
          ),

          // Account Notifications
          SwitchListTile(
            title: Text('Enable Notifications'),
            value: _notificationsEnabled,
            onChanged: (bool value) {
              setState(() {
                _notificationsEnabled = value;
              });
            },
          ),

          // Light or Dark Mode
          SwitchListTile(
            title: Text('Dark Mode'),
            value: _darkMode,
            onChanged: (bool value) {
              setState(() {
                _darkMode = value;
              });
              widget.toggleTheme(value);
            },
          ),

          // Privacy & Security
          SwitchListTile(
            title: const Text('Enable Biometric Login'),
            value: _biometricLoginEnabled,
            onChanged: (bool value) {
              setState(() {
                _biometricLoginEnabled = value;
              });
            },
          ),

          // Help & Support
          ListTile(
            title: const Text('Help & Support'),
            subtitle: const Text('Get help or contact support'),
            leading: const Icon(Icons.help_outline),
            onTap: () {
              // Navigate to Help & Support
            },
          ),

          // App Updates
          ListTile(
            title: const Text('Check for Updates'),
            subtitle: const Text('Ensure you are using the latest version'),
            leading: const Icon(Icons.system_update),
            onTap: () {
              // Navigate to app updates
            },
          ),

          // Feedback & Bug Reporting
          ListTile(
            title: const Text('Send Feedback'),
            subtitle: const Text('Report a bug or give feedback'),
            leading: const Icon(Icons.feedback),
            onTap: () {
              // Navigate to feedback screen
            },
          ),

          // About
          ListTile(
            title: Text('About Banana Assist'),
            subtitle: Text('Version 1.0.0'),
            leading: Icon(Icons.info_outline),
            onTap: () {
              // Navigate to about screen
            },
          ),
        ],
      ),
    );
  }
}
