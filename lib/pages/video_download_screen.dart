import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:downloader/pages/MusicScreen.dart';
import 'package:downloader/pages/SettingsScreen.dart';
import 'package:downloader/pages/VideoLibraryScreen.dart';
import 'package:downloader/pages/global_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class VideoDownloadScreen extends StatefulWidget {
  const VideoDownloadScreen({super.key});

  @override
  State<VideoDownloadScreen> createState() => _VideoDownloadScreenState();
}

class _VideoDownloadScreenState extends State<VideoDownloadScreen> {
  int _currentIndex = 0;
  DateTime? _lastBackPressTime;
  int _lastIndex = 0;

  final List<Widget> _screens = [
    const VideoLibraryScreen(),
    const MusicScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<GlobalThemeManager>(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = _lastIndex;
            _lastIndex = 0;
          });
          return false;
        }

        final now = DateTime.now();
        if (_lastBackPressTime == null ||
            now.difference(_lastBackPressTime!) > const Duration(seconds: 2)) {
          _lastBackPressTime = now;
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Press back again to exit app'),
              duration: Duration(seconds: 2),
              behavior: SnackBarBehavior.floating,
            ),
          );
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: themeManager.backgroundColor,
        body: _screens[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor:
              themeManager.backgroundColor, // ← This was already correct
          color: const Color.fromARGB(255, 67, 0, 0),
          animationDuration: const Duration(milliseconds: 300),
          index: _currentIndex,
          onTap: (index) {
            setState(() {
              _lastIndex = _currentIndex;
              _currentIndex = index;
            });
          },
          items: const [
            Icon(Icons.video_library_outlined, color: Colors.white),
            Icon(Icons.music_note, color: Colors.white),
            Icon(Icons.settings, color: Colors.white),
          ],
        ),
      ),
    );
  }
}
