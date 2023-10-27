import 'package:flutter/material.dart';


class cinemaTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.png'), // Replace with your actual background image path
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  height: 200,
                  child: Image.asset(
                    'assets/image12.png', // Replace with your actual ticket image path
                    fit: BoxFit.cover,
                  ),
                ),

                Center(
                  child: Card(
                    margin: EdgeInsets.only(left:35.0,right: 35),
                    child: Container(
                      height: 400,
                      width: 300,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  width: 280,
                                  height: 400,
                                  color: Colors.white,
                                  padding: EdgeInsets.all(16.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("The Creator"),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on),
                                          SizedBox(width: 10,),
                                          Text("Gast mall")
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Row(
                                        children: [
                                          Text("Date",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 70,),
                                          Text("Hour",style: TextStyle(color: Colors.grey),),
                                          SizedBox(width: 60,),
                                          Text("Seats",style: TextStyle(color: Colors.grey),)
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("20 Nov",style: TextStyle(fontSize: 20),),
                                          SizedBox(width: 30,),
                                          Text("10:00",style: TextStyle(fontSize: 20)),
                                          SizedBox(width: 30,),
                                          Text("Regular",style: TextStyle(fontSize: 20))
                                        ],
                                      ),
                                      SizedBox(height: 20,),
                                      Text(
                                        'BOOKING CODE',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '190991929432',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 20,),
                                      Text(
                                        'pass key',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey

                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        '1909919',
                                        style: TextStyle(
                                          fontSize: 16,
                                        ),
                                      ),




                                      Image.asset(
                                        'assets/image7.png', // Replace with the actual image path
                                        width: 400,
                                        height: 100,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),
                ),
              ]
          ),
        )
    );
  }
}