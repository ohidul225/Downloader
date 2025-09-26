import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:downloader/pages/MusicScreen.dart';
import 'package:downloader/pages/SettingsScreen.dart';
import 'package:downloader/pages/VideoLibraryScreen.dart';
import 'package:flutter/material.dart';

class VideoDownloadScreen extends StatefulWidget {
  const VideoDownloadScreen({super.key});

  @override
  State<VideoDownloadScreen> createState() => _VideoDownloadScreenState();
}

class _VideoDownloadScreenState extends State<VideoDownloadScreen> {
  int _currentIndex = 0;
  DateTime? _lastBackPressTime;

  // Track the last visited index before current one
  int _lastIndex = 0;

  final List<Widget> _screens = [
    const VideoLibraryScreen(),
    const MusicScreen(),
    const SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async {
        // If user is NOT on home screen (index 0), go back to last screen
        if (_currentIndex != 0) {
          setState(() {
            _currentIndex = _lastIndex; // Go back to last visited screen
            _lastIndex = 0; // Reset last index
          });
          return false; // Don't exit app
        }

        // If user is on home screen, check for double back press to exit
        final now = DateTime.now();
        if (_lastBackPressTime == null ||
            now.difference(_lastBackPressTime!) > const Duration(seconds: 2)) {
          _lastBackPressTime = now;

          // Show snackbar message
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Press back again to exit app'),
              duration: Duration(seconds: 2),
              behavior: SnackBarBehavior.floating,
            ),
          );
          return false; // Don't exit app
        }

        return true; // Exit app
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 181, 208, 231),
        body: _screens[_currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: const Color.fromARGB(255, 181, 208, 231),
          color: const Color.fromARGB(255, 147, 167, 185),
          animationDuration: const Duration(milliseconds: 300),
          index: _currentIndex,
          onTap: (index) {
            // Store current index as last index before changing
            setState(() {
              _lastIndex = _currentIndex; // Remember where user came from
              _currentIndex = index; // Go to new screen
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
