import 'package:downloader/pages/global_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  _launchURL(String urlString) async {
    try {
      final url = Uri.parse(urlString);
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        // Try launching in external browser
        await launchUrl(
          url,
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      // Handle error silently
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<GlobalThemeManager>(context);
    return Scaffold(
      backgroundColor: themeManager.backgroundColor,
      body: Column(
        children: [
          // Your header code remains the same...
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
              color: Color.fromARGB(255, 67, 0, 0),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.music_note,
                    size: 40,
                    color: Colors.white,
                  ),
                  Text(
                    "  Music Download Section",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Facebook
          InkWell(
            onTap: () => _launchURL('https://fdownload.app/en/facebook-to-mp3'),
            child: Container(
              margin: EdgeInsets.all(15),
              height: 85,
              decoration: BoxDecoration(
                color: themeManager.containerColor,
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
                            color: themeManager.textColor,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your music from facebook",
                          style: TextStyle(
                            fontSize: 14,
                            color: themeManager.textColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: themeManager.textColor,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Instagram
          InkWell(
            onTap: () => _launchURL('https://reelsave.app/audio'),
            child: Container(
              margin: EdgeInsets.all(15),
              height: 85,
              decoration: BoxDecoration(
                color: themeManager.containerColor, // ← Changed
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
                            color: themeManager.textColor, // ← Changed
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your music from instagram",
                          style: TextStyle(
                            fontSize: 14,
                            color: themeManager.textColor, // ← Changed
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: themeManager.textColor, // ← Changed
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // TikTok
          InkWell(
            onTap: () => _launchURL('https://ssstik.io/download-tiktok-mp3'),
            child: Container(
              margin: EdgeInsets.all(15),
              height: 85,
              decoration: BoxDecoration(
                color: themeManager.containerColor, // ← Changed
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
                            color: themeManager.textColor, // ← Changed
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your music from tiktok",
                          style: TextStyle(
                            fontSize: 14,
                            color: themeManager.textColor, // ← Changed
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: themeManager.textColor, // ← Changed
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // YouTube
          InkWell(
            onTap: () => _launchURL('https://y2mate.nu/R2lu/'),
            child: Container(
              margin: EdgeInsets.all(15),
              height: 85,
              decoration: BoxDecoration(
                color: themeManager.containerColor, // ← Changed
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
                            color: themeManager.textColor, // ← Changed
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Download your music from youtube",
                          style: TextStyle(
                            fontSize: 14,
                            color: themeManager.textColor, // ← Changed
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: themeManager.textColor, // ← Changed
                      size: 20,
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
