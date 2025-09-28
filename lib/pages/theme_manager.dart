// theme_manager.dart
import 'package:flutter/material.dart';

class AppTheme {
  static bool isDarkMode = false;

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
  }
}
