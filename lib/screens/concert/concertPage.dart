import 'package:eticket2/screens/concert/selectseatConcert.dart';
import 'package:flutter/material.dart';
import 'package:eticket2/config/platte.dart';
import '../../widget/NavBar.dart';
import '../conference/conferenceTicket.dart';

class ConcertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: ListView(
          children: [
            Container(
              height: 450,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image5.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 350,
              color: platte.orange,
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Concert 1',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(children: [
                    Icon(Icons.calendar_month,color: Colors.white,),
                    SizedBox(width: 10,),
                    Text("Friday, 24 Aug 2019",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 20,),
                    Text(" 6:30 PM - 9:30PM",style: TextStyle(color: Colors.white),),
                  ],),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Daboi Concert Hall",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: [
                      Icon(Icons.music_note,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("India Rock",style: TextStyle(color: Colors.white),)
                    ],
                  ),

                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.price_change_rounded,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("ETB 400-2000",style: TextStyle(color: Colors.white),)
                    ],
                  ),
                  SizedBox(height: 50,),
                  Container(
                    height: 1,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Container(
                        width: 150, // Adjust the width according to your needs
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Adjust the border radius as desired
                            ),
                          ),
                          child: Text(
                            'Buy Tickets',
                            style: TextStyle(fontSize: 14),
                          ),
                          onPressed: () {
                            // Navigate to ticket page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => selectseatConcert()),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
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