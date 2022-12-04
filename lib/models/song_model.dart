import 'package:flutter/material.dart';

const List song_type_1 = [
  "Recommendation",
  "Trending",
  "Beauty",
  "Business",
];

class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;
  final String index;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl,
      required this.index});

  static List<Song> songs = [
    Song(
        title: '1 triệu like',
        description: 'Đen Vâu',
        url: 'music/1.mp3',
        coverUrl: 'images/1.png',
        index: '1'),
    Song(
        coverUrl: "assets/images/img_2.png",
        title: "Saturday Party",
        description: "Party mood !",
        url: "music/saturday.mp3",
        index: '2'),
    Song(
        title: 'Blinding Lights',
        description: 'Blinding Lights',
        url: "music/weekend.mp3",
        coverUrl: 'assets/images/2.png',
        index: '3'),
  ];
}

const List songs = [
  {
    "img": "assets/images/img_1.png",
    "title": "Friday Party",
    "description": "Party mood !",
    "song_url": "music/friday.mp3",
  },
  {
    "img": "assets/images/img_2.png",
    "title": "Saturday Party",
    "description": "Party mood !",
    "song_url": "music/saturday.mp3",
  }
];

const List recentlys = [
  {
    "title": 'Mehabooba',
    "song_Url": "music/mehabooba.mp3",
    "image": "assets/images/img_3.png"
  },
  {
    "title": 'Adiyee',
    "song_Url": "music/adiyee.mp3",
    "image": "assets/images/img_4.png"
  },
  {
    "title": 'Adi penne',
    "song_Url": "music/adi penne.mp3",
    "image": "assets/images/img_5.png"
  }
];
