

import 'package:flutter/material.dart';

class CardTemp extends StatelessWidget {

  final String amount;
  final int expiryMonth;
  final int expiryYear;
  final int cardNumber;
  final color;

  CardTemp({
    required this.amount,
    required this.color,
    required this.cardNumber,
    required this.expiryMonth,
    required this.expiryYear,
  });


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.all(35),
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              'Balance',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$' + amount,
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNumber.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  expiryMonth.toString() + "/" + expiryYear.toString(),
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
