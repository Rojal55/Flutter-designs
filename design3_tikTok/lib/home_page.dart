import 'package:flutter/material.dart';
import 'package:tiktok_design/pages/add.dart';
import 'package:tiktok_design/pages/home.dart';
import 'package:tiktok_design/pages/inbox.dart';
import 'package:tiktok_design/pages/profile.dart';
import 'package:tiktok_design/pages/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void onSelected(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    Home(),
    Search(),
    Add(),
    Inbox(),
    Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onSelected,
        currentIndex: _selectedIndex,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.add_box),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.messenger),label: "Inbox"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),
      body: _pages[_selectedIndex]
    );
  }
}
