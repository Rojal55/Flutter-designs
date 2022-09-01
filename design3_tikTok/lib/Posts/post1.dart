import 'package:flutter/material.dart';

import 'package:tiktok_design/utils/post_template.dart';

class Post1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: "RojalBajracharya",
      caption: "Flutter Tiktk Design",
      noOfComments: '153',
      noOfLikes: '48M',
      noOfShares: '153',
      userPost: Container(
        color: Colors.amber,
      ),
    );
  }
}
