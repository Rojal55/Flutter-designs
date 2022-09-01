import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tiktok_design/utils/highlight_post_list.dart';
import 'package:tiktok_design/utils/highlights.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.grey[800],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey[500]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //icon
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.backpack_rounded),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 180,
              color: Colors.grey[600],
            ),
            // trend tags row
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       // #Icon
            //       Row(
            //         children: [
            //           Container(
            //             width: 30,
            //             height: 30,
            //             decoration: BoxDecoration(
            //               shape: BoxShape.circle,
            //               color: Colors.grey[700],
            //             ),
            //             child: Icon(
            //               Icons.grid_3x3,
            //               color: Colors.grey[500],
            //             ),
            //           ),
            //           SizedBox(
            //             width: 15,
            //           ),
            //           // trend name
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               Text(
            //                 "Janmastami",
            //                 style: TextStyle(fontWeight: FontWeight.bold),
            //               ),
            //               SizedBox(
            //                 height: 5,
            //               ),
            //               Text(
            //                 "Trending Hashtags",
            //                 style: TextStyle(color: Colors.grey[500]),
            //               )
            //             ],
            //           ),
            //         ],
            //       ),

            //       // no. of posts ig
            //       Container(
            //         decoration: BoxDecoration(
            //             color: Colors.grey[600],
            //             borderRadius: BorderRadius.circular(5)),
            //         child: Padding(
            //           padding: const EdgeInsets.all(2.0),
            //           child: Text("585.8.M"),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // // highlight posts,
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
            //   child: Container(
            //     height: 150,
            //     child: ListView.builder(
            //         itemCount: 7,
            //         scrollDirection: Axis.horizontal,
            //         itemBuilder: (context, index) {
            //           return HighlightPost();
            //         }),
            //   ),
            // ),
            Highlights(highlightName: "Janmastami", noOfPosts: "585.8M"),
            Highlights(highlightName: "HamroChad", noOfPosts: "114.5M"),
            Highlights(highlightName: "RakshaBandhan", noOfPosts: "769.1M"),
            Highlights(highlightName: "ArabianNights", noOfPosts: "51.3"),
          ],
        ),
      ),
    );
  }
}
