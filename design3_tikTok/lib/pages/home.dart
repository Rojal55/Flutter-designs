import 'package:flutter/material.dart';

import '../Posts/Post1.dart';
import '../Posts/Post2.dart';
import '../Posts/Post3.dart';

class Home extends StatelessWidget {
  final _controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      controller: _controller,
      children: [
        Post1(),
        Post2(),
        Post3(),
      ],
    ));
  }
}
