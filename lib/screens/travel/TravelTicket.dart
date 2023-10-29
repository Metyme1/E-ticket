import 'package:flutter/material.dart';

class TravelTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back.png'), // Replace with your actual background image path
              fit: BoxFit.cover,
            ),
          ),

          child: Center(
            child: Card(
              margin: EdgeInsets.only(left:35.0,right: 35),
              child: Container(
                height: 400,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(

                            height: 400,
                            color: Color.fromRGBO(255, 250, 252, 1.0),
                            padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Text(
                                    'Selam Bus',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.0),
                               Row(
                                 children: [
                                   Text("Addis Abeba"),
                                   SizedBox(width: 150,),
                                   Text("Hawassa")
                                 ],
                               ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [

                                  Text(
                                    '...',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.car_rental,
                                    size: 20.0,
                                  ),
                                  Text(
                                    '...',
                                    style: TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],),
                                Row(
                                  children: [
                                    Text("Oct 10, 5.50 am"),
                                    SizedBox(width: 80,),
                                    Text("Oct 10 11.15 am")
                                  ],
                                ),
                                SizedBox(height: 8.0),
                                Flexible(
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 1.0,
                                    indent: 8.0,
                                    endIndent: 8.0,
                                    height: 24.0,
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  children: [
                                    Text("Passengers",style: TextStyle(color: Colors.grey),),
                                    SizedBox(width: 45,),
                                    Text("Seat No",style: TextStyle(color: Colors.grey),),
                                    SizedBox(width: 45,),
                                    Text("Ticket No",style: TextStyle(color: Colors.grey),)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("3 Adults"),
                                    SizedBox(width: 60,),
                                    Text("B3,D2,D3"),
                                    SizedBox(width: 60,),
                                    Text("43215")
                                  ],
                                ),
                                SizedBox(height: 50,),
                                Row(
                                  children: [
                                    Text("Passengers name",style: TextStyle(color: Colors.grey),),
                                    SizedBox(width: 20,),
                                    Text("Ticket fare",style: TextStyle(color: Colors.grey),),
                                    SizedBox(width: 20,),
                                    Text("Bus Stop",style: TextStyle(color: Colors.grey),)
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Text("yared,Eyob,Eyob"),
                                    SizedBox(width: 60,),
                                    Text("700"),
                                    SizedBox(width: 60,),
                                    Text("1stop")
                                  ],
                                ),
                                SizedBox(height: 20,),
                                Center(child: Text("Ticket status:confirmed")),

                                Flexible(
                                  child: Divider(
                                    color: Colors.black,
                                    thickness: 1.0,
                                    indent: 8.0,
                                    endIndent: 8.0,
                                    height: 24.0,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Image.asset(
                                  'assets/image7.png', // Replace with the actual image path
                                  width: 400,
                                  height: 40,
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
        ),
      ),
    );
  }
}