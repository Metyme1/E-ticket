import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

class CinemaSeatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: platte.lightOrange,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(200, 20),
                    bottom: Radius.elliptical(200, -30),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Cinema Screen',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 70,),
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

                      final effectiveIndex = index > 3 ? index - 1 : index;
                      return Container(
                        height: 40,
                        width: 40,
                        color: Colors.grey,

                      );
                    }
                  },
                  itemCount: 88,
                ),
              ),
              Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
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
                          Icon(Icons.location_on,color: platte.lightOrange,),
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
                    Text(
                      "Total Price",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: platte.lightOrange,
                        fontSize: 16,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}