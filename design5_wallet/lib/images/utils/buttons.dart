import 'package:flutter/material.dart';
class Buttons extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
      return Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
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
                              'lib/images/send.png',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        'Send',
                        style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                      )
                    ],
                  );
  }
}