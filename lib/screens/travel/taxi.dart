import 'package:flutter/material.dart';

import 'destination.dart';
class TaxiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        color: Colors.grey[200],
        padding: EdgeInsets.all(16.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Icon(
                  Icons.emoji_transportation,
                  size: 48.0,
                  color: Colors.orange,// Set the desired size
                ),
                Text("taxi")
              ],
            ),
            SizedBox(height: 20,),
            Image.asset(
              'assets/map.jpeg', // Replace with your image asset path
              height: 500.0, // Set the desired height
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DestinationPage ()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: EdgeInsets.all(12.0),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.directions_car,
                        color: Colors.orange,
                        size: 24.0,
                      ),
                      SizedBox(width: 8.0),
                      Text(
                        'Where to go',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  'Miniliam Hall',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),

            Text(
              'Addis Abeba',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),

            Divider(
              color: Colors.orange,
              thickness: 2.0,
            ),

            Row(
              children: [
                Icon(Icons.location_on),
                Text(
                  'Gurde Shola',
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            Text(
              'S1',
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
              ),
            ),
            Divider(
              color: Colors.orange,
              thickness: 2.0,
            ),

          ],
        ),
      ),
    );
  }
}