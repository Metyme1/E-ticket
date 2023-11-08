import 'package:flutter/material.dart';
import 'package:eticket2/config/platte.dart';

class SplashScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/image10.png',
                    width: 300, // Adjust the width as needed
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Get all your Service in one',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),

                  ),
                  Text(
                    'Place',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),

                  ),
                  SizedBox(height: 23,),
                  Text(
                    'Every service you want come in get in and \n book it',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: Text('Skip',style: TextStyle(color: Colors.grey),),
                ),
                SizedBox(width: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5), // Adjust the opacity as desired
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(width: 8),
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5), // Adjust the opacity as desired
                      ),
                    ),
                    SizedBox(width: 8),

                  ],
                ),
                SizedBox(width: 60),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/splash3');
                  },
                  child: Text('Next',style: TextStyle(color:platte.black),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}