import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final imageAsset;
  final String btnName;

  const Buttons({super.key, required this.imageAsset, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                blurRadius: 18,
                spreadRadius: 5,
                offset: Offset.fromDirection(2,8)
              ),
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                imageAsset,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          btnName,
          style: TextStyle(fontSize: 16, color: Colors.grey[500]),
        )
      ],
    );
  }
}
