import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff151521),
      body: getBody(),
    );
  }
}

Widget getBody() {
  return Container(
    child: Stack(children: [
      Align(
        alignment: Alignment.center,
        child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Image.asset(
                  'images/Elip1.png',
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Person",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )
              ],
            )),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 170, left: 30),
        child: Container(
            child: Stack(
          children: [
            Text(
              "Personal Information",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 180),
              child: Text(
                "About",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 200, right: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Storage",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Audio Quality",
                        style: TextStyle(color: Colors.white),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ],
              ),
            )
          ],
        )),
      )
    ]),
  );
}
