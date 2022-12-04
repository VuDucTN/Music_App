// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class Playlist {
  final String title;
  final String recentlys;
  final String image;
  final String name;

  Playlist({
    required this.title,
    required this.recentlys,
    required this.image,
    required this.name,
  });

  static List<Playlist> playlist = [
    Playlist(
        title: 'Blinding Lights',
        name: 'The Weeknd',
        recentlys: 'assets/music/weekend.mp3',
        image: 'assets/images/2.png'),
    Playlist(
        title: 'Adiyee',
        name: 'Bachelor - Dhibu Ninan...',
        recentlys: 'assets/music/adiyee.mp3',
        image: 'assets/images/img_4.png'),
    Playlist(
      title: 'Adi penne',
      name: 'Adi penne - Stephen...',
      recentlys: 'assets/music/adi penne.mp3',
      image: 'assets/images/img_3.png',
    )
  ];
}
