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
                    'Concert Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Date: October 30, 2023',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Time: 8:00 PM',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Location: Concert Hall',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
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