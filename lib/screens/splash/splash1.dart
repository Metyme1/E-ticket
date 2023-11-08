import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
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
                    'assets/image2.png',
                    width: 300, // Adjust the width as needed
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Welcome to Mechet',
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Booking made easier',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 40,),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Choose Language'),
                                IconButton(
                                  icon: Icon(Icons.close),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                            content: Container(
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50)),
                              height: 350,
                              width: 350,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 100, // Set the desired height
                                    width: 250, // Set the desired width
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.orange),
                                      ),
                                      child: ListTile(
                                        title: Center(child: Text('Amharic')),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 100, // Set the desired height
                                    width: 250, // Set the desired width
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        side: BorderSide(color: Colors.orange),
                                      ),
                                      child: ListTile(
                                        title: Center(child: Text('English')),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: Text('Select Language',style: TextStyle(color: Colors.black)),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(300, 40)),
                      backgroundColor: MaterialStateProperty.all(Colors.grey[350]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
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
                    Container(
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black.withOpacity(0.5), // Adjust the opacity as desired
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 60),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/splash2');
                  },
                  child: Text('Next',style: TextStyle(color: platte.black),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}