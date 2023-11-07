import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../Model/EventItem.dart';
import '../widget/NavBar.dart';
import '../widget/appBar.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPageState createState() => _DiscoverPageState();
}

class _DiscoverPageState extends State<DiscoverPage> {
  List<String> categories = [
    'Conference',
    'Concert',
    'Cinema',
    'Stadium',
    'Travel',
  ];
  List<IconData> iconList = [
    Icons.group,
    Icons.music_note,
    Icons.movie,
    Icons.stadium,
    Icons.airplanemode_active,
  ];

  List<EventItem> eventItems = [
    EventItem(
      imagePath: 'assets/conference.jpeg',
      category: 'Conference',
      title: 'Conference',
      description: 'Join us for an exciting conference',
      date: 'November 10, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/conference.jpeg',
      category: 'Conference',
      title: 'Conference',
      description: 'Join us for an exciting conference',
      date: 'November 10, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/image3.png',
      category: 'Concert',
      title: 'Concert ',
      description: 'Experience a thrilling concert',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/image3.png',
      category: 'Concert',
      title: 'Concert ',
      description: 'Experience a thrilling concert',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/image24.png',
      category: 'Cinema',
      title: 'Gast Mall',
      description: 'Movies',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/image24.png',
      category: 'Cinema',
      title: 'Gast Mall',
      description: 'Movies',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/foot.jpeg',
      category: 'Stadium',
      title: 'Football',
      description: 'Experience a thrilling concert',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/foot.jpeg',
      category: 'Stadium',
      title: 'Football ',
      description: 'Experience a thrilling concert',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/travel.jpg',
      category: 'Travel',
      title: 'Gonder',
      description: 'Fly to Gonder',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
    EventItem(
      imagePath: 'assets/travel.jpg',
      category: 'Travel',
      title: 'Gonder',
      description: 'Fly to Gonder',
      date: 'December 5, 2023',
      price: '100 ETB - 1000',
    ),
  ];
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
              padding: const EdgeInsets.all(10.0),
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
                    'Categories',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 40.0,
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
                        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                        decoration: BoxDecoration(
                          color: isSelected ? platte.lightOrange : platte.darkblue,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                iconList[index], // Use the respective icon from the iconList
                                color: isSelected ? Colors.black : platte.lightOrange,
                              ),
                              SizedBox(width: 8.0),
                              Text(
                                category,
                                style: TextStyle(
                                  color: isSelected ? Colors.black : platte.lightOrange,
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Popular Events',
                    style: TextStyle(
                      fontSize: 16,
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
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                  itemCount: eventItems.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10.0),
                  itemBuilder: (context, index) {
                    final eventItem = eventItems[index];

                    if (selectedCategory == 'Conference' && eventItem.category == 'Conference') {
                      return GestureDetector(
                        onTap: () {
                          // Define the navigation logic for the conference category
                          Navigator.pushNamed(context, '/conference');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(eventItem.imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              eventItem.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),

                        ),
                      );
                    }
                    else if (selectedCategory == 'Cinema' && eventItem.category == 'Cinema') {
                      return GestureDetector(
                        onTap: () {
                          // Define the navigation logic for the cinema category
                          Navigator.pushNamed(context, '/cinema');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(eventItem.imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              eventItem.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    else if (selectedCategory == 'Concert' && eventItem.category == 'Concert') {
                      return GestureDetector(
                        onTap: () {
                          // Define the navigation logic for the concert category
                          Navigator.pushNamed(context, '/concert');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(eventItem.imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              eventItem.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    else if (selectedCategory == 'Stadium' && eventItem.category == 'Stadium') {
                      return GestureDetector(
                        onTap: () {
                          // Define the navigation logic for the concert category
                          Navigator.pushNamed(context, '/football');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(eventItem.imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              eventItem.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    }
                    else if (selectedCategory == 'Travel' && eventItem.category == 'Travel') {
                      return GestureDetector(
                        onTap: () {
                          // Define the navigation logic for the travel category
                          Navigator.pushNamed(context, '/travel');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 200.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(eventItem.imagePath),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              eventItem.title,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    } else {
                      return Container();
                    }
                  },
                ),
              ),
            ),

          ],

        ),
        bottomNavigationBar: CustomNavigationBar(
          destinations: destinations,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      )
    );
  }
}