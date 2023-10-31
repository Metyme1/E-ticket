import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import '../../widget/clipper.dart';
import '../../widget/customButton.dart';
import 'cinemaPayment.dart';
import 'cinemaSummary.dart';

class CinemaSeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              'Choose Seat',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),


        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: CurvedBannerContainer(
                    width: double.infinity,
                    height: 70,
                    color: platte.orange,
                    child: Center(
                      child: Text(
                        'Cinema Screen',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Icon(Icons.rectangle,color: Colors.black,),
                    SizedBox(width: 10,),
                    Text("Avaliable"),
                    SizedBox(width: 20,),
                    Icon(Icons.rectangle,color: Colors.grey[200],),
                    SizedBox(width: 10,),
                    Text("Unavaliable"),
                    SizedBox(width: 20,),
                    Icon(Icons.rectangle,color: Colors.orangeAccent,),
                    SizedBox(width: 10,),
                    Text("Selected")
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 11,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 5.0,
                    ),
                    itemBuilder: (context, index) {
                      if (index == 3 ||
                          index == 14 ||
                          index == 25 ||
                          index == 36 ||
                          index == 47 ||
                          index == 58 ||
                          index == 69 ||
                          index == 80) {
                        return SizedBox(width: 20);
                      } else {
                        final texts = ['A1', 'A2', 'A3', 'C1', 'D5', 'E2', 'F4'];
                        final colors = [Colors.grey, Colors.black, platte.orange,Colors.grey, Colors.grey, Colors.grey,Colors.grey,];

                        final effectiveIndex = index > 3 ? index - 1 : index;
                        return Container(
                          height: 40,
                          width: 40,
                          color: colors[effectiveIndex % texts.length],
                          child: Center(
                            child: Text(
                              texts[effectiveIndex % texts.length],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        );
                      }
                    },
                    itemCount: 88,
                  ),
                ),
                Container(
                  width: 500,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(

                    children: [
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Row(
                          children: [
                            Icon(Icons.location_on),
                            Text("CINEMA 1",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Row(
                          children: [
                            Text("Date",style: TextStyle(color: Colors.black),),
                            SizedBox(width: 100,),
                            Text("Hour",style: TextStyle(color: Colors.black),),
                            SizedBox(width: 100,),
                            Text("Seats",style: TextStyle(color: Colors.black),)
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Row(
                          children: [
                            Text("20 Nov",style: TextStyle(color: Colors.black,fontSize: 24),),
                            SizedBox(width: 30,),
                            Text("15:05",style: TextStyle(color: Colors.black,fontSize: 24),),
                            SizedBox(width: 50,),
                            Text("G10,G11",style: TextStyle(color: Colors.black,fontSize: 24),)
                          ],
                        ),
                      ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.only(left:15),
                    child: Row(
                      children: [Text("Totla Price",style: TextStyle(fontSize:16 ),)],
                    ),
                  ),
                      Padding(
                        padding: const EdgeInsets.only(left:15),
                        child: Row(
                          children: [Text("ETB 1000",style: TextStyle(fontSize:28,color: Colors.orange ),)],
                        ),
                      )

                    ],

                  ),

                ),
                Positioned(

                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomButton(
                          text: 'Order Summary',
                          onPressed: () {
// Navigate to the payment page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  cinemaPayment()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
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