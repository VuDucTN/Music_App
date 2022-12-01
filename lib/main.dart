import 'package:flutter/material.dart';
import 'package:music/page/Song_screen.dart';

import 'package:music/page/root_app.dart';
import 'package:music/page/welcome_app/download.dart';
import 'package:music/page/welcome_app/splashScreen.dart';
import 'package:music/page/welcome_app/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        WelcomeScreen.routeName: (context) => WelcomeScreen(),
        DownloadScreen.routeName: (context) => DownloadScreen(),
        RootApp.routeName: (context) => RootApp(),
        SongScreen.routeName: (context) => SongScreen()
      },
    );
  }
}
