import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_app/screens/account/profile.dart';
import 'package:music_app/screens/homepage/home.dart';
import 'package:music_app/screens/music/userMusic.dart';
import 'package:music_app/screens/search/getMusic.dart';

class MusicView extends StatefulWidget {
  const MusicView({Key? key}) : super(key: key);

  @override
  State<MusicView> createState() => _MusicViewState();
}

class _MusicViewState extends State<MusicView> {
  int selectedIndex = 0;

  void navBarTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List<Widget> pages = const [
    Home(),
    GetMusic(),
    UserMusic(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: navBarTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.compass), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.double_music_note), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.hexagon), label: ''),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
