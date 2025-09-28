import 'package:downloader/pages/global_theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_manager.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool wifiOnly = true;
  bool askEveryTime = false;

  @override
  Widget build(BuildContext context) {
    final themeManager = Provider.of<GlobalThemeManager>(context);

    return Scaffold(
      backgroundColor: themeManager.backgroundColor,
      body: Column(
        children: [
          Center(
            child: Container(
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
                      Icons.settings,
                      size: 40,
                      color: Colors.white,
                    ),
                    Text(
                      "  Settings",
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Theme Section
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "🎨 THEME",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: themeManager.textColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: themeManager.containerColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: SwitchListTile(
                      title: Text(
                        "Dark Mode",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: themeManager.textColor,
                        ),
                      ),
                      value: themeManager.isDarkMode,
                      onChanged: (value) {
                        themeManager.setDarkMode(
                            value); // ← This will update entire app
                      },
                      activeThumbColor: Color.fromARGB(255, 67, 0, 0),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Download Section
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "📶 DOWNLOAD",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: themeManager.textColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      color: themeManager.containerColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        SwitchListTile(
                          title: Text(
                            "Wi-Fi Only",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: themeManager.textColor,
                            ),
                          ),
                          value: wifiOnly,
                          onChanged: (value) {
                            setState(() {
                              wifiOnly = value;
                              if (value) askEveryTime = false;
                            });
                          },
                          activeThumbColor: Color.fromARGB(255, 67, 0, 0),
                        ),
                        Divider(
                            height: 1,
                            color: AppTheme.isDarkMode
                                ? Colors.grey[600]
                                : Colors.grey[300]),
                        SwitchListTile(
                          title: Text(
                            "Ask Every Time",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: themeManager.textColor,
                            ),
                          ),
                          value: askEveryTime,
                          onChanged: (value) {
                            setState(() {
                              askEveryTime = value;
                              if (value) wifiOnly = false;
                            });
                          },
                          activeThumbColor: Color.fromARGB(255, 67, 0, 0),
                        ),
                      ],
                    ),
                  ),

                  Spacer(),

                  // Reset Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          // ← This is important!
                          AppTheme.isDarkMode = false;
                          wifiOnly = true;
                          askEveryTime = false;
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 67, 0, 0),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "Reset to Default",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
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
