// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../utils/stories.dart';
import '../utils/user_posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    "Rojal",
    "Urusha",
    "Urjana",
    "Baa",
    "Mommy",
    "Danny",
    "Harry"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Instagram",
            ),
            Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //Stories
          Container(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return Stories(name: people[index]);
              },
            ),
          ),

          //Posts
          // UserPost(name: "Rojal",),
          Expanded(
            child: ListView.builder(itemCount: people.length,itemBuilder: (context,index){
              return UserPost(name: people[index]);
            }),
          )
        
        ],
      ),
    );
  }
}
