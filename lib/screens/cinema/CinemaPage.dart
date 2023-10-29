import 'package:flutter/material.dart';

import '../../widget/appBar.dart';
import 'movieDetailPage.dart';

class CinemaPage extends StatefulWidget {
  @override
  _CinemaPageState createState() => _CinemaPageState();
}

class _CinemaPageState extends State<CinemaPage> {
  List<String> cinemaImages = [
    "assets/image1.png",
    "assets/image12.png",
    "assets/image8.png",
    // Add more image paths as needed
  ];

  List<String> movieTitles = [

    "Anime",
    "The Creator",
    "The Equalizer",
    // Add more movie titles as needed
  ];
  List<String> movieType = [

    "Drama,Normal",
    "Drama,Action",
    "Drama,Horor",
    // Add more movie titles as needed
  ];

  List<double> movieRatings = [
    4.5,
    8.9,
    8.9,
    // Add more movie ratings as needed
  ];

  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: CustomAppBar(
              title: 'Gast Mall Cinema',
              onNotificationPressed: () {
                // Handle notification button press
              },
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),

            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cinemaImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: selectedIndex == index ? 170 : 120,
                            height: selectedIndex == index ? 300 : 200,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,

                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                selectedIndex == index ? 20.0 : 20.0,
                              ),
                              child: Image.asset(
                                cinemaImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          if (selectedIndex == index) ...[
                            SizedBox(height: 8.0),
                            Text(
                              movieTitles[index],
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4.0),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16.0,
                                ),
                                SizedBox(width: 4.0),
                                Text(
                                  movieRatings[index].toString(),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),

                                ),
                                SizedBox(width: 30,),
                                Text(
                                  movieType[index].toString(),
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.grey
                                  ),

                                ),
                              ],

                            ),
                       SizedBox(height: 30,),
                            GestureDetector(
                              onTap: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => MovieDetailPage()),
                                );
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.ads_click,
                                    color: Colors.red,
                                    size: 24.0,
                                  ),
                                  SizedBox(width: 8.0),
                                  Text(
                                    "Get your tickets Now",
                                    style: TextStyle(
                                      color: Colors.green,
                                    ),
                                  ),
                                ],
                              ),
                            ),


                          ],

                        ],

                      ),
                    ),
                  );
                },
              ),
            ),

            Center(
              child: SizedBox(
                width: 300,
                height: 250.0,
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/image21.png', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                    Positioned(

                      left: 16.0,
                      right: 16.0,
                      child: Container(
                        padding: EdgeInsets.all(16.0),

                        child: Text(
                          'Get free popcorn and drink\nwhen using gold',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}