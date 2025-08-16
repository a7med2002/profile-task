import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: "OleoScript"),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
          backgroundColor: Colors.lime,
          actionsPadding: EdgeInsets.only(right: 10),
          actions: [Icon(Icons.menu)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              spacing: 10,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(3, 10),
                        spreadRadius: 2,
                        blurRadius: 10,
                      ),
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("images/me.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Ahmed Meqdad",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "OleoScript",
                    shadows: [
                      Shadow(
                        color: Colors.lime,
                        blurRadius: 4,
                        offset: Offset(3, 5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.lime,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/facebook.png"),
                    width: 20,
                    height: 20,
                  ),
                  Text("www.Facebook/ahmedmeqdad.com"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.lime,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/linkedin.png"),
                    width: 20,
                    height: 20,
                  ),
                  Text("www.linkedin/ahmedmeqdad.com"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.lime,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/instagram.png"),
                    width: 24,
                    height: 24,
                  ),
                  Text("www.instagram/ahmedmeqdad.com"),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              color: Colors.lime,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("images/map.png"),
                    width: 20,
                    height: 20,
                  ),
                  Text("www.googlemap/location.com"),
                ],
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text("Contact Me", style: TextStyle(color: Colors.lime)),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(6),
                  side: BorderSide(color: Colors.black),
                ),
                padding: EdgeInsets.all(20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
