import 'dart:io';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:music/models/playlist_model.dart';
import 'package:music/page/Song_screen.dart';
import 'package:music/page/Song_screen/Song_screen1.dart';
import '../models/song_model.dart';
import 'package:get/get.dart';

class Favorite extends StatefulWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  List<Playlist> playlists = Playlist.playlist;
  Song song = Get.arguments ?? Song.songs[0];

  int activeTab = 0;
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xff151521).withOpacity(0.6),
            Color(0xff151521).withOpacity(0.9),
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
                          onTap: () {},
                          child: LikeButton(
                            likeBuilder: (isTapped) {
                              return Icon(
                                Icons.favorite,
                                color: isTapped
                                    ? Color(0xff24EBCA)
                                    : Color(0xFF899CCF),
                                size: 30,
                              );
                            },
                          )),
                      ClipRRect(
                          child: Image.asset(
                        'images/Elip3.png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      )),
                      InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(),
                            child: PopupMenuButton(
                              itemBuilder: (context) => [
                                PopupMenuItem(child: Icon(Icons.download)),
                              ],
                              child: Icon(
                                Icons.more_horiz,
                                color: Colors.white,
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: playlists.length,
                        itemBuilder: ((context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10.0),
                                    child: Image.asset(
                                      playlists[index].image,
                                      height: 50,
                                      width: 50,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            playlists[index].title,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                          ),
                                          Text(
                                            playlists[index].name,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.white,
                                                ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SongScreen1()),
                                      );
                                    },
                                    icon: const Icon(
                                      Icons.play_circle,
                                      color: Colors.greenAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        })),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                song.coverUrl,
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      song.title,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                    ),
                                    Text(
                                      song.description,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.white,
                                          ),
                                    )
                                  ],
                                ),
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
                              icon: const Icon(
                                Icons.play_circle,
                                color: Colors.greenAccent,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
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
