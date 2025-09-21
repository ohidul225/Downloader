import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'video_download_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSplashScreen(
        splash: Lottie.asset(
          "assets/splash.json",
          repeat: true,
          width: 450,
          height: 450,
        ),
        nextScreen: VideoDownloadScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 900,
        backgroundColor: Colors.white,
      ),
    );
  }
}
