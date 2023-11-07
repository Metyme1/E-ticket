import 'package:eticket2/config/platte.dart';
import 'package:eticket2/screens/conference/conferencePayment.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import '../../widget/appBar.dart';
import '../../widget/customButton.dart';

class ConferencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0), // Add padding values as desired
            child: CustomAppBar(
              title: 'Discover conference',
              onNotificationPressed: () {
                // Handle notification button press
              },
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 350,
                    height: 200,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/image15.png', // Replace with your asset image path
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(height: 40),
                  Container(
                    width: 350,
                    height: 400,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Center(child: Text("Detail",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed pharetra risus.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sed pharetra risus.',
                          style: TextStyle(fontSize: 16),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.location_on,color: platte.orange,),
                              SizedBox(width: 10),
                              Text(
                                'MEDA HOTEL',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.calendar_today,color: platte.orange,),
                              SizedBox(width: 30),
                              Text(
                                '10:00AM',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.price_change_rounded,color: platte.orange,),
                              SizedBox(width: 30),
                              Text(
                                'ETB 400',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        CustomButton(
                          text: 'Book Pass',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PaymentPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          destinations: destinations,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      );
    
  }
}