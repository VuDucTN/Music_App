class Song {
  final String title;
  final String description;
  final String url;
  final String coverUrl;

  Song(
      {required this.title,
      required this.description,
      required this.url,
      required this.coverUrl});

  static List<Song> songs = [
    Song(
        title: '1 triệu like',
        description: 'Đen Vâu',
        url: 'music/1.mp3',
        coverUrl: 'images/1.png'),
    // Song(title: 'Blinding Lights',
    //     description: 'Blinding Lights',
    //     url: 'assets/music/2.mp3',
    //     coverUrl: 'assets/images/2.png')
  ];
}
