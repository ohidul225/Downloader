import 'package:flutter/material.dart';

class VideoLibraryScreen extends StatelessWidget {
  const VideoLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 208, 231),
      body: const Center(
        child: Text(
          'Video Library Content',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
