import 'package:flutter/material.dart';

import '../../widget/roundedButton.dart';
import '../conference/conferenceTicket.dart';
import 'concertPayment.dart';

class selectseatConcert extends StatefulWidget {
  @override
  _selectseatConcertState createState() => _selectseatConcertState();
}

class _selectseatConcertState extends State<selectseatConcert> {
  String selectedButton = '';

  void handleButtonSelection(String buttonText) {
    setState(() {
      selectedButton = buttonText;
    });
  }

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
              color: Color.fromRGBO(255, 210, 128, 1.0),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Select Seat",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 300, // Set the desired width
                    child: RoundedButton(
                      buttonText: 'Regular Seat',
                      color: Colors.white,
                      isSelected: selectedButton == 'Regular Seat',
                      onPressed: () {
                        handleButtonSelection('Regular Seat');
                        // Add your button onPressed logic here
                        print('Button Pressed');
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 50,
                    width: 300, // Set the desired width
                    child: RoundedButton(
                      buttonText: 'VIP',
                      color: Colors.white,
                      isSelected: selectedButton == 'VIP',
                      onPressed: () {
                        handleButtonSelection('VIP');
                        // Add your button onPressed logic here
                        print('Button Pressed');
                      },
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 50,
                    width: 300, // Set the desired width
                    child: RoundedButton(
                      buttonText: 'VVIP',
                      color: Colors.white,
                      isSelected: selectedButton == 'VVIP',
                      onPressed: () {
                        handleButtonSelection('VVIP');
                        // Add your button onPressed logic here
                        print('Button Pressed');
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 50,
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => concertPayment()),
                        );
                      },
                      child: Text(
                        'Select Seat',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}