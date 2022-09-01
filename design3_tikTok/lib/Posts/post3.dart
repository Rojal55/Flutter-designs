import 'package:flutter/material.dart';

import 'package:tiktok_design/utils/post_template.dart';

class Post3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PostTemplate(
      userName: "UrjanaBajracharya",
      caption: "Flutter Tiktk Design Caption 3 ",
      noOfComments: '153',
      noOfLikes: '48M',
      noOfShares: '153',
      userPost: Container(
        color: Colors.red,
      ),
    );
  }
}
