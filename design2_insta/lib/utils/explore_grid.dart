import 'package:flutter/material.dart';

class ExploreGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //crossAxisCount specifies how many items do u want in a row
    return GridView.builder(
      itemCount: 30,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              color: Colors.grey[300],
            ),
          );
        });
  }
}
