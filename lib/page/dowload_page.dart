import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/circular_reveal_clipper.dart';
import 'package:get/get_navigation/src/routes/default_transitions.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../models/song_model.dart';

class DowloadPage extends StatefulWidget {
  const DowloadPage({Key? key}) : super(key: key);

  @override
  State<DowloadPage> createState() => _DowloadPageState();
}

class _DowloadPageState extends State<DowloadPage> {
  Song song = Get.arguments ?? Song.songs[2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151521),
      body: getBody(),
    );
  }

  int downloadProgress = 0;

  bool isDownloadStarted = false;

  bool isDownloadFinish = false;

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
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                  ),
                  Image.asset(
                    song.coverUrl,
                    height: 100,
                  ),
                  Container(
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          song.title,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          song.description,
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(),
                    child: Column(children: [
                      Visibility(
                          visible: isDownloadStarted,
                          child: CircularPercentIndicator(
                            radius: 20.0,
                            lineWidth: 3,
                            percent: (downloadProgress / 100),
                            center: Text(
                              "$downloadProgress%",
                              style: const TextStyle(
                                  fontSize: 12, color: Colors.blue),
                            ),
                          )),
                      Visibility(
                        visible: !isDownloadStarted,
                        child: IconButton(
                            onPressed: downloadCourse,
                            icon: isDownloadFinish
                                ? Icon(
                                    Icons.check,
                                    color: Colors.greenAccent,
                                  )
                                : Icon(
                                    Icons.download,
                                    color: Colors.white,
                                  )),
                      ),
                    ]),
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

  void downloadCourse() async {
    isDownloadStarted = true;
    isDownloadFinish = false;
    downloadProgress = 0;
    setState(() {});

    while (downloadProgress < 100) {
      downloadProgress += 10;
      setState(() {});
      if (downloadProgress == 100) {
        isDownloadFinish = true;
        isDownloadStarted = false;
        setState(() {});
        break;
      }
      await Future.delayed(const Duration(milliseconds: 500));
    }
  }
}
