import 'package:flutter/material.dart';
import 'package:music/page/login_page.dart';
import 'package:music/page/root_app.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({Key? key}) : super(key: key);
  static const routeName = "/downloadScreen";

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
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Column(
                  children: [
                    Image.asset('images/Elip2.png'),
                    SizedBox(height: 30),
                    SizedBox(
                        width: 300,
                        child: Text(
                          "Download and save your Favourit Music",
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
                      .pushReplacementNamed(LoginPage.routeName);
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
