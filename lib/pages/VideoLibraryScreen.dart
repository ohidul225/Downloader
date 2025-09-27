import 'package:flutter/material.dart';

class VideoLibraryScreen extends StatelessWidget {
  const VideoLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 181, 208, 231),
      body: Column(
        children: [
          //for facebook
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 80),
              height: 85,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 147, 167, 185),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/facebook.png"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Facebook",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your video from facebook",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //for instagram
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              height: 85,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 147, 167, 185),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage:
                          AssetImage("assets/images/instagram.png"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Instagram",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your video from instagram",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //for tiktok
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              height: 85,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 147, 167, 185),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/tiktok.png"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TikTok",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your video from tiktok",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //for youtube
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 15),
              height: 85,
              width: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 147, 167, 185),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/youtube.png"),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "YouTube",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your video from youtube",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
