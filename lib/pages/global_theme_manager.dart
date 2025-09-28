// global_theme_manager.dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GlobalThemeManager with ChangeNotifier {
  bool _isDarkMode = false;

  GlobalThemeManager() {
    _loadTheme();
  }

  bool get isDarkMode => _isDarkMode;

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    notifyListeners();
  }

  Future<void> setDarkMode(bool value) async {
    _isDarkMode = value;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', value);
    notifyListeners();
  }

  void toggleTheme() {
    setDarkMode(!_isDarkMode);
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
