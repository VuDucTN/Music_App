import 'dart:async';

import 'package:flutter/material.dart';
import 'package:music/page/welcome_app/welcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer _timer;
  @override
  void initState() {
    _timer = Timer(Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(WelcomeScreen.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(color: Color(0xff24CEF0)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 300),
                child: Column(
                  children: [
                    Image.asset('images/Vector.png'),
                    SizedBox(height: 30),
                    Text(
                      "Start Turing Your ideas into Reality",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 27,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Listen to Vii Music",
                      style: TextStyle(
                          color: Color(0xff08979C),
                          fontSize: 24,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
