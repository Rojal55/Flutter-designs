import 'dart:ffi';

import 'package:flutter/material.dart';

class DocTemplate extends StatelessWidget {
  final imageAsset;
  final String docName;
  final String docTitle;
  final double rating;

  DocTemplate({
    required this.docName,
    required this.docTitle,
    required this.imageAsset,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.deepPurple[50],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            // picture
            Container(
              // decoration: BoxDecoration(
              //   shape: BoxShape.circle,
              //   color: Colors.deepPurple[100],
              // ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  imageAsset,
                  height: 100,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            // Rating
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amber[300],
                ),
                SizedBox(
                  width: 5,
                ),
                Text(rating.toString(),style: TextStyle(fontSize: 16),),
              ],
            ),
             SizedBox(
              height: 10,
            ),

            // name
            Text(
              docName,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(docTitle, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
