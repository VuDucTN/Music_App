import 'package:flutter/material.dart';
import 'package:music/page/welcome_app/download.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  static const routeName = "/welcomeScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: new BoxDecoration(color: Color(0xff151521)),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Skip",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600)),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    Image.asset('images/Elip1.png'),
                    SizedBox(height: 30),
                    SizedBox(
                        width: 300,
                        child: Text(
                          "Welcome to the world of music",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 400,
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment(0.85, 0.9),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(DownloadScreen.routeName);
                },
                child: Text("Next"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
