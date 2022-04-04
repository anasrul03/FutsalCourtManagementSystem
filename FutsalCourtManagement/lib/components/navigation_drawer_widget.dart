// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:testing/page/booking_page.dart';
import '../dashboard.dart' as IndexKau;

class NavigationDrawerWidget extends StatelessWidget {
  NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding = EdgeInsets.symmetric(horizontal: 20);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.black,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 48),
            buildMenuItem(
              text: "Your Profile",
              icon: Icons.people,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 18),
            buildMenuItem(
              text: "Bookings",
              icon: Icons.book,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 18),
            buildMenuItem(
              text: "Favorite",
              icon: Icons.favorite,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 18),
            buildMenuItem(
              text: "Settings",
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 24),
            Divider(color: Colors.white70),
            const SizedBox(height: 24),
            const SizedBox(height: 18),
            buildMenuItem(
              text: "Helps",
              icon: Icons.help,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 18),
            buildMenuItem(
              text: "Contact Developer",
              icon: Icons.phone,
              onClicked: () => selectedItem(context, 0),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    required onClicked,
  }) {
    // ignore: prefer_const_declarations
    final color = Colors.white;
    // ignore: prefer_const_declarations
    final hoverColor = Colors.white70;

    return ListTile(
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color)),
        hoverColor: hoverColor,
        onTap: onClicked);
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        index = IndexKau.currentIndex;
        break;
      case 1:
         index = IndexKau.currentIndex;
        break;
    }
  }
}
