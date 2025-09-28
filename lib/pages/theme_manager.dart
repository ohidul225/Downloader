// theme_manager.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppTheme {
  static bool isDarkMode = false;

  // Initialize theme from shared preferences
  static Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    isDarkMode = prefs.getBool('isDarkMode') ?? false;
  }

  // Save theme preference
  static Future<void> saveTheme(bool darkMode) async {
    isDarkMode = darkMode;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', darkMode);
  }

  static Color get backgroundColor {
    return isDarkMode ? Colors.grey[900]! : Colors.white;
  }

  static Color get textColor {
    return isDarkMode ? Colors.white : Colors.black;
  }

  static Color get containerColor {
    return isDarkMode ? Colors.grey[800]! : Colors.grey[100]!;
  }

  static void toggleTheme() {
    isDarkMode = !isDarkMode;
    saveTheme(isDarkMode);
  }
}
