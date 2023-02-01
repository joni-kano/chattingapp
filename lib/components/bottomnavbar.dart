// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:mwhatsapp/export.dart';

class BtmNavbar extends StatefulWidget {
  const BtmNavbar({
    Key? key,
  }) : super(key: key);

  @override
  State<BtmNavbar> createState() => _BtmNavbarState();
}

class _BtmNavbarState extends State<BtmNavbar> {
  int selectedindex = 0;

  List pages = [
    const ChatsScreen(),
    const Stories(),
    const Clubhouse(),
    const People(),
    const Settings()
  ];

  void updatePage(int page) {
    setState(() {
      selectedindex = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: pages [selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueAccent,
        currentIndex: selectedindex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        onTap: updatePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_rounded,
              size: 25,
            ),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_outline,
              size: 25,
            ),
            label: "Stories",
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.camera_alt,
                size: 25,
              ),
              label: "Clubhouse"),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 25,
            ),
            label: "People",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              size: 25,
            ),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
