import 'package:flutter/material.dart';

import 'buttons.dart';

class PostTemplate extends StatelessWidget {
  final String userName;
  final String noOfLikes;
  final String noOfComments;
  final String noOfShares;
  final String caption;
  final userPost;

  PostTemplate({
    required this.userName,
    required this.noOfLikes,
    required this.noOfComments,
    required this.noOfShares,
    required this.userPost,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // post sab vanda paxadi
          userPost,

          //User name and Caption
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 250,
              alignment: Alignment(-1, 1), // idk what is supposed to do
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "@" + userName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: caption),
                        TextSpan(
                            text: ' #idkwhuttosay #fluuter #fyp #lmao',
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          //like and share buttons
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(
                    number: noOfLikes,
                    icon: Icons.favorite,
                  ),
                  MyButton(
                    number: noOfComments,
                    icon: Icons.chat_bubble_outlined,
                  ),
                  MyButton(
                    number: noOfComments,
                    icon: Icons.send,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
