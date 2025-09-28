// main.dart
import 'package:downloader/pages/global_theme_manager.dart';
import 'package:downloader/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // ← ADD THIS IMPORT

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GlobalThemeManager(),
      child: Consumer<GlobalThemeManager>(
        builder: (context, themeManager, child) {
          return MaterialApp(
            title: 'Your App',
            home: SplashScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
