import 'dart:html';

import 'package:flutter/material.dart';

class DowloadPage extends StatefulWidget {
  const DowloadPage({Key? key}) : super(key: key);

  @override
  State<DowloadPage> createState() => _DowloadPageState();
}

class _DowloadPageState extends State<DowloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151521),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 20,
        ),
        Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "DOWLOAD",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            )),
        SizedBox(
          height: 50,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    "images/music.png",
                    height: 100,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Waiting for you!",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(child: Icon(Icons.download)),
                        PopupMenuItem(child: Icon(Icons.delete)),
                      ],
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ]),
        ),
      ]),
    );
  }
}
