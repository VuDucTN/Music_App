import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:music/page/Song_screen.dart';
import '../models/song_model.dart';
import 'package:get/get.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  Song song = Get.arguments ?? Song.songs[0];

  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF303151).withOpacity(0.6),
            Color(0xFF303151).withOpacity(0.9),
          ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigation.pop(Contend);
                        },
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xFF899CCF),
                          size: 30,
                        ),
                      ),
                      ClipRRect(
                          child: Image.asset(
                        'images/Elip3.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.more_horiz,
                          color: Color(0xFF899CCF),
                          size: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(height: 15),
                    Container(
                      margin: EdgeInsets.only(top: 15, right: 12, left: 5),
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        color: Color(0xFF30314D),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  song.title,
                                  style: TextStyle(
                                    color: Color(0xff24EBCA),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  song.description,
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SongScreen()),
                                );
                              },
                              icon: Icon(
                                Icons.play_arrow,
                                color: activeTab == 1
                                    ? Color(0xff24CBCA)
                                    : Colors.white,
                              ))
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
