import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../widget/appBar.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<String> categories = [
    'conference',
    'concert',
    'cinema',
    'football',
    'travel',
  ];
  List<IconData> iconList = [
    Icons.group,
    Icons.music_note,
    Icons.movie,
    Icons.sports_soccer,
    Icons.airplanemode_active,
  ];
  Map<String, List<String>> categoryImages = {
    'conference': [
      'assets/c.jpg',
      'assets/c.jpg',

    ],
    'concert': [
      'assets/con.png',
      'assets/con.png',

    ],
   'cinema':[
     'assets/M1.png',
     'assets/M2.png',
     'assets/M1.png',
   ],
    'football':[
      'assets/c.jpg',
      'assets/con.png',
    ],
    'travel':[
      'assets/M1.png',
      'assets/con.png',


    ]
  };
  String selectedCategory = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0), // Add padding values as desired
            child: CustomAppBar(
              title: 'Discover',
              onNotificationPressed: () {
                // Handle notification button press
              },
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search',
                  border: InputBorder.none,
                  contentPadding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                height: 50.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    final category = categories[index];
                    final isSelected = category == selectedCategory;
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedCategory = category;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 8.0),
                        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: isSelected ? platte.lightOrange : platte.darkBlue,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                iconList[index], // Use the respective icon from the iconList
                                color: isSelected ? Colors.black : Colors.white,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                category,
                                style: TextStyle(
                                  color: isSelected ? Colors.black : Colors.white,
                                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Popular Events',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
           // SizedBox(height: 30,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: ListView.separated(
                  itemCount: categoryImages[selectedCategory]?.length ?? 0,
                  separatorBuilder: (context, index) => SizedBox(height: 10.0),
                  itemBuilder: (context, index) {
                    final assetImagePath = categoryImages[selectedCategory]?[index];
                    return GestureDetector(
                      onTap: () {
                        // Define the navigation logic based on the selected image
                        if (selectedCategory == 'conference') {
                          Navigator.pushNamed(context, '/conference');
                        } else if (selectedCategory == 'cinema') {
                          Navigator.pushNamed(context, '/cinema');
                        } else if (selectedCategory == 'football') {
                          Navigator.pushNamed(context, '/football');
                        }
                        else if (selectedCategory == 'travel') {
                          Navigator.pushNamed(context, '/travel');
                        }
                        else if (selectedCategory == 'concert') {
                          Navigator.pushNamed(context, '/concert');
                        }
                      },
                      child: Container(
                        width: double.infinity,
                        height: 200.0,
                        child: assetImagePath != null
                            ? Image.asset(
                          assetImagePath,
                          fit: BoxFit.fill,
                        )
                            : Container(),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],

        ),

      ),
    );
  }
}