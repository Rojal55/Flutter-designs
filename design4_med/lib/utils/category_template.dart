import 'package:flutter/material.dart';

class CatTemplate extends StatelessWidget {
  final String category;
  final String imageAsset;

  CatTemplate({
    required this.category,
    required this.imageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.deepPurple[50],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              height: 35,
            ),
            SizedBox(width: 10,),
            Text(category),
            
          ],
        ),
      ),
    );
  }
}
