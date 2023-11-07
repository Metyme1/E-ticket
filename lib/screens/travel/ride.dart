import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';

class RidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bac.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
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
              Padding(
                padding: const EdgeInsets.only(top:8.0,left:20,right: 20,bottom: 8),
                child: Card(

                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Container(
                        padding: EdgeInsets.only(top: 100,),
                        color: Colors.white70,
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
                ),
              ),
              SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(top:8.0,left:20,right: 20,bottom: 8),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 4,
                      child: Container(
                        height: 300,


                        color: Colors.white70,
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