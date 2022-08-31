import 'package:flutter/material.dart';

import 'package:tiktok_design/utils/post_template.dart';

class Post2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: "UrushaBajracharya",
      caption: "TikTok 2nd caption",
      noOfComments: '153',
      noOfLikes: '48M',
      noOfShares: '153',
      userPost: Container(
        color: Colors.green,
      ),
    );
  }
}
