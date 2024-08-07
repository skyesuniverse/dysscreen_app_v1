import 'package:DysScreen/models/language_constants.dart';
import 'package:DysScreen/screens/aboutscreen.dart';
import 'package:DysScreen/screens/homescreen.dart';
import 'package:DysScreen/screens/taketestscreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> tabchildren;
  int _currentIndex = 0;
  String maintitle = "Home";

  @override
  void initState() {
    super.initState();
    print("Home");
    tabchildren = const [
      HomeTabScreen(),
      TakeTestScreen(),
      AboutScreen(),
    ];
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text(maintitle)),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: translation(context).homeLabel),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.content_paste_search_sharp,
                ),
                label: translation(context).testLabel),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore_outlined,
                ),
                label: translation(context).aboutLabel)
          ]),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
      if (_currentIndex == 0) {
        maintitle = "Home";
      }
      if (_currentIndex == 1) {
        maintitle = "Test";
      }
      if (_currentIndex == 2) {
        maintitle = "About";
      }
    });
  }
}
