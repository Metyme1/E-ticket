

import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import '../../widget/buscard.dart';
import '../../widget/customButton.dart';
import 'TravelPayment.dart';

class BusBookingPage extends StatelessWidget {
  final double latitude;
  final double longitude;

  BusBookingPage({required this.latitude, required this.longitude});


  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

        body: SingleChildScrollView(
          child: Padding(

            padding: const EdgeInsets.all(.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:10.0,left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bus_alert,
                        size: 48.0,

                      ),
                      Text("Booking Bus Ticket")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:20,left: 30,right: 20,),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text("From"),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Addis Abeba',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),

                          ),

                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(left: 30,right: 20,),
                  child: Row(

                    children: <Widget>[

                      Icon(Icons.location_on),
                      Text("To"),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Hawassa',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),

                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 20,),
                  child:Row(
                    children: <Widget>[
                      SizedBox(width: 16.0),
                      Icon(Icons.calendar_month),
                      Text("Date"),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(

                            labelText: '23/03/16',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0), // Adjust the padding value as per your requirement
                            suffixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left:30,right: 20),
                  child:
                  Row(
                    children: [
                      Icon(Icons.bus_alert),
                      Text("Bus \nCompany"),
                      SizedBox(width: 10,),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50.0),
                                    topRight: Radius.circular(16.0),
                                  ),
                                  child: Container(
                                    height: 400,
                                    child: SingleChildScrollView(
                                      child: Container(
                                        padding: EdgeInsets.all(16.0),
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Available Buses',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.close),
                                                  onPressed: () {
                                                    Navigator.of(context).pop(); // Close the bottom sheet
                                                  },
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: Alignment.centerLeft,
                                              child: Text(
                                                'choose one',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 16),
                                            BusCard(
                                              busName: 'Selam Bus',
                                              seatAvailability: '13',
                                              date: 'Date 1',
                                              price: '1200 ETB',
                                            ),
                                            SizedBox(height: 20,),
                                            BusCard(
                                              busName: 'Selam Bus',
                                              seatAvailability: '14',
                                              date: 'Date 2',
                                              price: '1200 ETB',
                                            ),
                                            SizedBox(height: 20,),
                                            BusCard(
                                              busName: 'Selam Bus',
                                              seatAvailability: '15',
                                              date: 'Date 3',
                                              price: '1200 ETB',
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: TextFormField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: 'Choose Bus Company',
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      Text("Passengers"),
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
            Divider(
              color: Colors.grey[300], // Set the desired color
              height: 20, // Set the desired height
              thickness: 2, // Set the desired thickness
            ),
                Row(
                  children: [

                    Column(
                      children: [
                        Text("Select Seats(3/5)"),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.rectangle,size: 30,color: Colors.black,),

                              Text(" Taken Seat")
                            ],
                          ),
                        ),
                        SizedBox(height: 5,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.rectangle,size: 30,color: Colors.white,),

                              Text(" avaliable seat")
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Row(
                            children: [
                              Icon(Icons.rectangle,size: 30,color: platte.orange,),

                              Text(" seats you selected")
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),

                      ],
                    ),
                    SizedBox(width: 10,),
            Container(
              height: 280, // Replace with your desired height
              width: 200, // Replace with your desired width
              color: Colors.grey[200], // Replace with your desired container color
              child: GridView.count(
                crossAxisCount: 4, // Number of columns
                crossAxisSpacing: 4.0, // Spacing between columns
                mainAxisSpacing: 4.0,
                childAspectRatio: 1.2, // Adjust the value to change the square size
                children: List.generate(28, (index) {
                  Color squareColor;
                  if (index % 3 == 0) {
                    squareColor = platte.orange; // Orange color for some squares
                  } else if (index % 3 == 1) {
                    squareColor = Colors.black; // Black color for some squares
                  } else {
                    squareColor = Colors.grey; // Grey color for remaining squares
                  }
                  return Container(
                    color: squareColor, // Set the color based on the index
                    margin: EdgeInsets.all(2),

                  );
                }),
              ),
            ),


                  ],
                ),
                SizedBox(height: 10,),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: CustomButton(
                      text: 'proceed Payment',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  TravelPayment()),
                        );

                      },
                    ),
                  ),
                ),
          ]
      ),
      ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          destinations: destinations,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),

    );
  }
}
