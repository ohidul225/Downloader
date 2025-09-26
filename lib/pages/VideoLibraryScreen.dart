import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class VideoLibraryScreen extends StatelessWidget {
  const VideoLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 208, 231),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color.fromARGB(255, 181, 208, 231),
        color: const Color.fromARGB(255, 147, 167, 185),
        animationDuration: Duration(milliseconds: 300),
        items: [
          Icon(
            Icons.video_library_outlined,
            color: Colors.white,
          ),
          Icon(
            Icons.music_note,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
