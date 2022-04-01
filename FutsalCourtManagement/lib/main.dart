// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:testing/components/futsalcard.dart';
import 'package:testing/page/booking_page.dart';
import 'package:testing/page/favorite_page.dart';
import 'package:testing/page/help_page.dart';
import 'package:testing/page/home_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CourtifyApp(),
  ));
}

// ignore: use_key_in_widget_constructors
class CourtifyApp extends StatefulWidget {
  @override
  _CourtifyAppState createState() => _CourtifyAppState();
}

class _CourtifyAppState extends State<CourtifyApp> {
  // this is the index for the bottomNavigationBar
  int currentIndex = 3;
  // this is the screen based on the selected index on BottomNavigationBar
  final screens = [
    //Index = 0
    home_page(),
    //Index = 1
    favorite_page(),
    //Index = 2
    booking_page(),
    //Index = 3
    help_page(),
  ];
  //sometime we can face some http request erreur if the owner of the picture delted it or the url is not available
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      body: IndexedStack(
        //this indexedstack will keep the state when you directed to another page.
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: "Bookings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: "Help",
          ),
        ],
      ),
    );
  }
}
