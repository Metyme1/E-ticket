import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';

class RidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Padding(
              padding: const EdgeInsets.only(top:40.0,left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.emoji_transportation,
                    size: 48.0, // Set
                    color: platte.orange,// the desired size
                  ),
                  Text("Taxi")
                ],
              ),
            ),
            Container(
              width: 200.0,
              height: 200.0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  padding: EdgeInsets.only(top: 100,),
                  color: Colors.grey[100],
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/feres.png',
                          width: 50.0,
                          height: 50.0,
                        ),
                        SizedBox(height: 16.0),
                        Text(
                          'Selected Service',
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

            ),
            SizedBox(height: 30,),
            Expanded(
              child: Container(
                color: Colors.grey[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.price_change_rounded,size: 40,color: platte.orange,),
                       SizedBox(width: 30,),
                       Text("ETB 290 [Estimated]")
                     ],
                   ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon( Icons.directions , size: 40,color: platte.orange),
                        SizedBox(width: 130,),
                        Text("5.6 km")
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow_outlined,size: 40,color: platte.orange),
                        SizedBox(width: 130,),
                        Text("Hotel")
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: CustomButton(
                text: 'Book now',
                onPressed: () {

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