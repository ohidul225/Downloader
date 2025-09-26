import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'VideoLibraryScreen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Pre-cache the image when the widget is built
    precacheImage(const AssetImage("assets/icon/icon.jpg"), context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSplashScreen(
        splash: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.width * 0.8,
              child: Lottie.asset(
                "assets/wave_animation.json",
                repeat: true,
                fit: BoxFit.contain,
              ),
            ),
            // ignore: sized_box_for_whitespace
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.width * 0.3,
              child: Image.asset(
                "assets/icon/icon.jpg",
                fit: BoxFit.contain,
                cacheWidth: 300, // Optimize by specifying cache size
              ),
            ),
          ],
        ),
        nextScreen: VideoLibraryScreen(),
        splashTransition: SplashTransition.fadeTransition,
        duration: 3000,
        backgroundColor: Colors.white,
        splashIconSize: MediaQuery.of(context).size.width * 0.8,
      ),
    );
  }
}
