import 'package:flutter/material.dart';

import 'highlight_post_list.dart';

class Highlights extends StatelessWidget {
  final String highlightName;
  final String noOfPosts;

  Highlights({
    required this.highlightName,
    required this.noOfPosts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // #Icon
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[700],
                    ),
                    child: Icon(
                      Icons.grid_3x3,
                      color: Colors.grey[500],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  // trend name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        highlightName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Trending Hashtags",
                        style: TextStyle(color: Colors.grey[500]),
                      )
                    ],
                  ),
                ],
              ),

              // no. of posts ig
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey[600],
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      Text(noOfPosts),
                      Icon(Icons.arrow_forward_ios,size: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // highlight posts,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Container(
            height: 150,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return HighlightPost();
                }),
          ),
        ),
      ],
    );
  }
}
