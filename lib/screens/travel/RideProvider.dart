import 'package:eticket2/screens/travel/ride.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import '../../widget/RideProviderWidget.dart';

class RideProviderPage extends StatefulWidget {
  @override
  _RideProviderPageState createState() => _RideProviderPageState();
}

class _RideProviderPageState extends State<RideProviderPage> {
  double _containerHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: AnimatedContainer(
                duration: Duration(milliseconds: 200),
                height: _containerHeight,
                child: Image.asset(
                  'assets/map.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: DraggableScrollableSheet(
                initialChildSize: 0.3,
                minChildSize: 0.3,
                maxChildSize: 1,
                builder: (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0),
                      ),
                    ),
                    child: Scrollbar(
                      thickness: 8.0,
                      radius: Radius.circular(4.0),
                      child: ListView(
                        controller: scrollController,
                        padding: EdgeInsets.all(16.0),
                        children: [
                          RideProviderItem(
                            providerName: 'Feres',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RidePage()),
                              );
                            },
                            imagePath: 'assets/ride.png', availableSeats: 11,
                          ),
                          SizedBox(height: 10,),
                          RideProviderItem(
                            providerName: 'Feres',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RidePage()),
                              );
                            },
                            imagePath: 'assets/feres.png', availableSeats: 8,
                          ),
                          SizedBox(height: 10,),
                          RideProviderItem(
                            providerName: 'Zay Ride',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RidePage()),
                              );
                            },
                            imagePath: 'assets/zayride.jpeg', availableSeats: 10,
                          ),
                          SizedBox(height: 10,),
                          RideProviderItem(
                            providerName: 'Taxiye',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => RidePage()),
                              );
                            },
                            imagePath: 'assets/taxiye.png', availableSeats: 12,
                          ),
                        ],
                      ),
                    ),
                  );
                },
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
      ),
    );
  }
}
