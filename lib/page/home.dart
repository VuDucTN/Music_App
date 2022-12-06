import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music/models/playlist_model.dart';
import 'package:music/models/song_model.dart';
import 'package:music/page/Song_screen.dart';
import 'package:music/page/Song_screen/Song_screen1.dart';
import 'package:music/page/Song_screen/Song_screen2.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeMenu1 = 0;
  @override
  Widget build(BuildContext context) {
    List<Playlist> playlists = Playlist.playlist;
    List<Song> songs = Song.songs;
    return Container(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const _DiscoverMusic(),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20.0,
                  bottom: 20.0,
                  right: 10.0,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recently Play',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                        ),
                        Text('See all',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: playlists.length,
                        itemBuilder: ((context, index) {
                          return Container(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                          builder: (context) => SongScreen2()),
                                    );
                                  },
                                  icon: const Icon(
                                    Icons.play_circle,
                                    color: Colors.greenAccent,
                                  ),
                                ),
                              ],
                            ),
                          );
                        })),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hot Music',
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                        ),
                        Text('See all',
                            style: Theme.of(context)
                                .textTheme
                                .headline6!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400)),
                      ],
                    ),
                    SizedBox(height: 20),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: songs.length,
                        itemBuilder: ((context, index) {
                          return Container(
                            height: 60,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    songs[index].coverUrl,
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
                                          songs[index].title,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                        ),
                                        Text(
                                          songs[index].description,
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
                          );
                        }))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _DiscoverMusic extends StatefulWidget {
  const _DiscoverMusic({Key? key}) : super(key: key);

  @override
  State<_DiscoverMusic> createState() => _DiscoverMusicState();
}

class _DiscoverMusicState extends State<_DiscoverMusic> {
  int activeMenu1 = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            'Hello,',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          ), //Hello
          SizedBox(
            height: 4,
          ),
          Text(
            'What You want to hear today ?',
            style: Theme.of(context).textTheme.headline6!.copyWith(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 14),
          ), //What You want to hear today ?
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            decoration: InputDecoration(
                isDense: true,
                filled: true,
                fillColor: Colors.white,
                hintText: 'Search',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.grey.shade400),
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey.shade400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                )),
          ), // Search
          SizedBox(
            height: 28,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(song_type_1.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 70),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activeMenu1 = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              song_type_1[index],
                              style: TextStyle(
                                fontSize: 12,
                                color: activeMenu1 == index
                                    ? Colors.greenAccent
                                    : Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activeMenu1 == index
                                ? Container(
                                    width: 73,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: List.generate(songs.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(songs[index]['img']),
                                        fit: BoxFit.cover),
                                    color: Colors.greenAccent,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.31,
                                height: 50,
                                margin: const EdgeInsets.only(bottom: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          songs[index]['title'],
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w600,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          songs[index]['description'],
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        )
                                      ],
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
                                        icon: Icon(
                                          Icons.play_arrow,
                                          color: Colors.greenAccent,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          ),
        ]));
  }
}
