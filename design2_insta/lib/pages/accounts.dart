import 'package:design2_insta/pages/edit_profile.dart';
import 'package:design2_insta/utils/account_tab_1.dart';
import 'package:design2_insta/utils/account_tab_2.dart';
import 'package:design2_insta/utils/stories.dart';
import 'package:flutter/material.dart';

class UserAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.lock_outline_rounded),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Rojal"),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.add_box_outlined),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(Icons.menu),
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //profile pic
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 25,
                  ),

                  // followings and stuffs
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "12",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text("Posts")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Column(
                            children: [
                              Text(
                                "150",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Followers")
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "300",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text("Following")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // name and BIo
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rojal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text("Boku Wa Dare Nano Ka \nKimi Wa Mou Shitteiru Hazu Da"),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  //Edit Profile
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context) {
                            return EditProfile();
                          }),
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Center(
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  // button
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.person_add_outlined),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //stories Highlights
            Container(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Stories(name: "Story 1"),
                  Stories(name: "Story 2"),
                  Stories(name: "Story 3"),
                  Stories(name: "Story 4"),
                  Stories(name: "Story 5"),
                  Stories(name: "Story 6"),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_on_rounded),
                ),
                Tab(
                  icon: Icon(Icons.person_pin_outlined),
                ),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
