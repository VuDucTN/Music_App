import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int activeTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151521),
      bottomNavigationBar: getFooter(),
      body: getBody(),
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: activeTab,
      children: [
        Center(
          child: Text(
            "Home",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Favorite",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Play",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Dowload",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "User",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget getFooter() {
    List items = [
      Icons.home,
      Icons.favorite,
      Icons.play_circle,
      Icons.download,
      Icons.person,
    ];
    return Container(
      height: 50,
      decoration: BoxDecoration(color: Color(0xff24242E)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(items.length, (index) {
              return IconButton(
                  icon: Icon(
                    items[index],
                    color:
                        activeTab == index ? Color(0xff24CBCA) : Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                      activeTab = index;
                    });
                  });
            })),
      ),
    );
  }
}
