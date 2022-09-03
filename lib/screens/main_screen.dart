import 'package:flutter/material.dart';
import 'package:hse_dormitory/config/constants.dart';
import 'package:hse_dormitory/screens/discover_screen.dart';
import 'package:hse_dormitory/screens/home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  static const routeName = '/';
  static final screens = [
    const HomeScreen(),
    const DiscoverScreen(),
    const HomeScreen()
  ];

  int currentIndex = 0;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
          index: widget.currentIndex, children: MainScreen.screens),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            setState(() {
              widget.currentIndex = value;
            });
          },
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Constants.accentColor,
          currentIndex: widget.currentIndex,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              icon: Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: const Icon(Icons.home)),
            ),
            const BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Container(
                  margin: const EdgeInsets.only(right: 50),
                  child: const Icon(Icons.person)),
            ),
          ]),
    );
  }
}
