// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:design2_insta/pages/accounts.dart';
import 'package:design2_insta/pages/home.dart';
import 'package:design2_insta/pages/reels.dart';
import 'package:design2_insta/pages/search.dart';
import 'package:design2_insta/pages/shop.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccounts(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onTap,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: "reels"),
          BottomNavigationBarItem(icon: Icon(Icons.shop), label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "accounts"),
        ],
      ),
    );
  }
}
