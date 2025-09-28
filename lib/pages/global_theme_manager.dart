// global_theme_manager.dart - SIMPLE VERSION (no shared_preferences)
import 'package:flutter/material.dart';

class GlobalThemeManager with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  void setDarkMode(bool value) {
    _isDarkMode = value;
    notifyListeners();
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  Color get backgroundColor {
    return _isDarkMode ? Colors.grey[900]! : Colors.white;
  }

  Color get textColor {
    return _isDarkMode ? Colors.white : Colors.black;
  }

  Color get containerColor {
    return _isDarkMode ? Colors.grey[800]! : Colors.grey[100]!;
  }
}
