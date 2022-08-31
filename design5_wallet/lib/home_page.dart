// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:design5_wallet/images/utils/buttons.dart';
import 'package:design5_wallet/images/utils/card_template.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Container(
                height: 40,
                child: Image.asset('lib/images/home.png'),
              ),
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 40,
              child: Image.asset('lib/images/setting.png'),
            ),
            label: "",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        
        onPressed: () {},
        backgroundColor: Colors.blue[300],
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset('lib/images/scan.png'),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      
      body: SafeArea(
        child: Column(
          children: [
            //appBar
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " Cards",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  // add button
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(Icons.add),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 16,
            ),

            //card
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  CardTemp(
                    color: Colors.deepPurple[300],
                    amount: '5,250.20',
                    expiryMonth: 10,
                    expiryYear: 24,
                    cardNumber: 12345678,
                  ),
                  CardTemp(
                    color: Colors.blue[400],
                    amount: '4,540.80',
                    expiryMonth: 4,
                    expiryYear: 23,
                    cardNumber: 99999999,
                  ),
                  CardTemp(
                    color: Colors.green[300],
                    amount: '2,450.50',
                    expiryMonth: 11,
                    expiryYear: 23,
                    cardNumber: 15264826,
                  ),
                  CardTemp(
                    color: Colors.green[300],
                    amount: '2,450.50',
                    expiryMonth: 11,
                    expiryYear: 23,
                    cardNumber: 15264826,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 4,
              effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade500,
                  dotColor: Colors.grey.shade400),
            ),

            //buttons
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // send button
                  Buttons(
                    btnName: 'Send',
                    imageAsset: 'lib/images/send.png',
                  ),
                  Buttons(
                    btnName: 'Pay',
                    imageAsset: 'lib/images/credit-card.png',
                  ),
                  Buttons(
                    btnName: 'Bills',
                    imageAsset: 'lib/images/bills.png',
                  ),
                ],
              ),
            ),

            // transactionss
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // icon
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple[100],
                            borderRadius: BorderRadius.circular(25)),
                        child: Image.asset('lib/images/stats.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Statistics',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Payments and Income',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500])
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // icon
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Colors.blue[100],
                            borderRadius: BorderRadius.circular(25)),
                        child: Image.asset('lib/images/transaction.png'),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Transactions',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Transaction History',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey[500])
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
