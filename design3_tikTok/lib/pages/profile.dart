// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../utils/tabs/first_tab.dart';
import '../utils/tabs/second_tab.dart';
import '../utils/tabs/third_tab.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.person_add_alt, color: Colors.black),
          centerTitle: true,
          title: Row(
            children: [
              SizedBox(
                width: 80,
              ),
              Text(
                "lajor",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              Icon(Icons.arrow_drop_down, color: Colors.black),
            ],
          ),
          actions: [
            Icon(Icons.calendar_today_rounded, color: Colors.black),
            SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(Icons.menu, color: Colors.black),
            ),
          ],

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Icon(Icons.person_add_alt_1_outlined),
          //     Container(
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 55.0),
          //         child: Row(
          //           children: [
          //             Text(
          //               'lajor',
          //               style: TextStyle(fontSize: 16),
          //             ),
          //             Icon(Icons.arrow_drop_down_rounded),
          //           ],
          //         ),
          //       ),
          //     ),
          //     Row(
          //       children: [
          //         Icon(Icons.archive_outlined),
          //         SizedBox(
          //           width: 20,
          //         ),
          //         Icon(Icons.menu),
          //       ],
          //     ),
          //   ],
          // ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),

            // profile pic
            Center(
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[300], shape: BoxShape.circle),
              ),
            ),
            // user name
            SizedBox(
              height: 10,
            ),
            Text(
              "@lajor55",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),

            // following followers Like row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      "10",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "9",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "0",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                    Text(
                      "Like",
                      style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            // Edit Profile and bookmark button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Icon(Icons.bookmark_border, color: Colors.black),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ],
            ),
            // bio
            SizedBox(
              height: 15,
            ),
            Text(
              "Bio Here ://",
              style: TextStyle(color: Colors.grey),
            ),

            TabBar(
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_outlined, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.favorite_border, color: Colors.black),
                ),
                Tab(
                  icon: Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
              ],
            ),
            
            Expanded(
              child: TabBarView(children: [
                FirstTab(),
                SecondTab(),
                ThirdTab(),
                
              ]),
            )
          ],
        ),
      ),
    );
  }
}
