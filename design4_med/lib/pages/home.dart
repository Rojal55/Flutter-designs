// ignore_for_file: prefer_const_constructors

import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../utils/category_template.dart';
import '../utils/doctor_list_template.dart';

class Home extends StatelessWidget {
  List cat = [
    "Dentist",
    "Surgeon",
    "Nephrologist",
    "Surgeon",
    // "Surgeon",
  ];
  List imageAsset = [
    "lib/icons/tooth.png",
    "lib/icons/surgery.png",
    "lib/icons/kidney.png",
    "lib/icons/tooth.png",
    "lib/icons/tooth.png",
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            // for dismissing keyboard as u scroll
            // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    // name and pic row
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        // name Column
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ignore: prefer_const_constructors
                          Text(
                            "Hello,",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey[700]),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "Jeromy Bell",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 24),
                          ),
                        ],
                      ),
    
                      // picture
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.deepPurple[100],
                        ),
                        child: Icon(
                          Icons.person,
                          color: Colors.deepPurple[200],
                          size: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Container(
                    // how do u feel container
    
                    decoration: BoxDecoration(
                      color: Colors.pink[50],
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Row(
                      children: [
                        // picture on left
                        Expanded(
                          child: Container(
                              // height: 150,
                              // color: Colors.deepPurple[100],
                              child: Lottie.network(
                                  'https://assets6.lottiefiles.com/packages/lf20_tutvdkg0.json')),
                        ),
                        // "how do u feel" + button
    
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "How do you feel?",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                                SizedBox(
                                  height: 13,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    "Fill out your medical card right now",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
    
                                //button
                                Container(
                                  height: 40,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple[300],
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Center(
                                      child: Text(
                                    "Get Started",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
    
                // Search Box
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[50],
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: TextField(
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
    
                            border: InputBorder.none,
                            prefixIcon: Icon(Icons.search,size: 30,),
                            hintText: 'How Can we help you?',
                            hintStyle: TextStyle(color: Colors.deepPurple[300])),
                      ),
                    ),
                  ),
                ),
                // Category List
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Container(
                    height: 70,
                    child: ListView.builder(
                        itemCount: cat.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CatTemplate(
                            category: cat[index],
                            imageAsset: imageAsset[index],
                          );
                        }),
                  ),
                ),
                // "Doctor List" Row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Doctor list",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
    
                //Doctor listView
                Container(
                  height: 225,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          DocTemplate(
                            docName: "Dr. Ariene McCoy",
                            docTitle: "Therapist, 7 y.e",
                            imageAsset: "lib/doctors/doctor1.png",
                            rating: 4.9,
                          ),
                          DocTemplate(
                            docName: "Dr. Albert Flores",
                            docTitle: "Surgeon, 5 y.e",
                            imageAsset: "lib/doctors/doctor3.png",
                            rating: 4.7,
                          ),
                          DocTemplate(
                            docName: "Dr. Quickes Clasifox",
                            docTitle: "Dentist, 3 y.e",
                            imageAsset: "lib/doctors/doctor2.png",
                            rating: 5,
                          ),
                        ],
                      ),
                      // ListView.builder(
                      //     itemCount: 3,
                      //     scrollDirection: Axis.horizontal,
                      //     itemBuilder: (context, index) {
                      //       return DocTemplate();
                      //     }),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
