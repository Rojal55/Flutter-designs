// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UserPost extends StatelessWidget {
  final String name;

  UserPost({required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //profile pic
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.menu),
            ],
          ),
        ),

        // Posts
        Container(
          height: 350,
          color: Colors.grey[300],
        ),

        // Below Posts likes comments stuffs
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        // Liked by ...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: "Liked by "),
                    TextSpan(
                        text: "Jason ",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: "and "),
                    TextSpan(
                        text: "others ",
                        style: TextStyle(fontWeight: FontWeight.bold))
                  ],
                ),
              ),
            ],
          ),
        ),

        // Captions...
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        ' quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')
              ],
            ),
          ),
        ),
      ],
    );
  }
}
