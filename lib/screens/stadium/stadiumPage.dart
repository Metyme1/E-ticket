import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../../widget/seatcard.dart';

class FootballPage extends StatefulWidget {
  @override
  State<FootballPage> createState() => _FootballPageState();
}

class _FootballPageState extends State<FootballPage> {
  String selectedSeatType = 'Select Seat Type';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.only(top:70.0,left: 20,right: 20),
        child: Column(
          children: [
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 100,
                    height: 150,
                    margin: EdgeInsets.only(right: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.orange,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                Text(
                  'Vs',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: Container(
                    width: 100,
                    height: 150,
                    margin: EdgeInsets.only(left: 8.0),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ],
            ),
           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 40.0,right: 40),
             child: Row(
               children: [
                 Text("Team1",style: TextStyle(fontSize: 18),),
                 SizedBox(width: 140,),
                 Text("Team 2",style: TextStyle(fontSize: 18),)
               ],
             ),
           ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Text("Name of Ticket Holder:",style: TextStyle(fontSize: 18),),
              ],),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    width: 400,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Enter Name',
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Text("Select Seat Type:",style: TextStyle(fontSize: 18),),
                    ],),
                  ),
                  Container(
                    height: 50,
                    width: 400,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: FractionallySizedBox(
                                    widthFactor: 4.0,
                                    heightFactor: 0.9,
                                    child: AlertDialog(
                                      backgroundColor: Colors.white,
                                      contentPadding: EdgeInsets.all(16.0),
                                      content: SingleChildScrollView(
                                        child: Column(
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Available Seats',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                IconButton(
                                                  icon: Icon(Icons.close),
                                                  onPressed: () {
                                                    Navigator.of(context).pop(); // Close the dialog
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
                                            SeatCard (
                                              busName: 'Regular Seat',
                                              seatAvailability: '23',
                                              date: 'Jan 22/03/16',
                                              price: '400 ETB',
                                              onTap: () {
                                                setState(() {
                                                  selectedSeatType = 'Regular Seat';
                                                });
                                                Navigator.of(context).pop(); // Close the dialog
                                              },
                                            ),
                                            SizedBox(height: 20,),
                                            SeatCard (
                                              busName: 'VIP',
                                              seatAvailability: '14',
                                              date: 'Jan 22/03/16',
                                              price: '1200 ETB',
                                              onTap: () {
                                                setState(() {
                                                  selectedSeatType = 'VIP';
                                                });
                                                Navigator.of(context).pop(); // Close the dialog
                                              },
                                            ),
                                            SizedBox(height: 20,),
                                            SeatCard (
                                              busName: 'VVIP',
                                              seatAvailability: '15',
                                              date: 'Jan 22/03/16',
                                              price: '1200 ETB',
                                              onTap: () {
                                                setState(() {
                                                  selectedSeatType = 'VIIP';
                                                });
                                                Navigator.of(context).pop(); // Close the dialog
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ).then((value) {
                          if (value != null) {
                            setState(() {
                              selectedSeatType = value;
                            });
                          }
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[100],
                        elevation: 0,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.zero,
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5),

                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Select Seat Type',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}