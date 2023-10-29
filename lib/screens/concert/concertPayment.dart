

import 'package:eticket2/screens/concert/concertTicket.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';
import '../../widget/paymentcard.dart';
import '../conference/conferenceTicket.dart';
import 'concertSummary.dart';

class concertPayment extends StatelessWidget {
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
                'Payment Page',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),

          body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        'Regular Seat:',
                        style: TextStyle(
                          fontSize: 15,

                        ),
                      ),
                      SizedBox(width: 170,),
                      Text(
                        '500ETB',
                        style: TextStyle(
                          fontSize: 18,


                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 16),
                  Row(children: [
                    Text(
                      'Convenience Fee:',
                      style: TextStyle(
                        fontSize: 15,

                      ),
                    ),
                    SizedBox(width: 140,),
                    Text(
                      '50ETB',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                  ],),
                  DividerTheme(
                    data: DividerThemeData(
                      thickness: 1, // Increase thickness for a bolder line
                    ),
                    child: Container(
                      height: 30, // Increase height to increase the space taken by the Divider
                      child: Divider(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(children: [
                    Text(
                      'Actual Pay',
                      style: TextStyle(
                        fontSize: 14,

                      ),
                    ),
                    SizedBox(width: 190,),
                    Text(
                      '550Etb',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                  ],),
                  SizedBox(height: 16),
                  Text(
                    'Payment Method',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height:30),
                  GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      PaymentCard(image: 'assets/image13.png'),
                      PaymentCard(image: 'assets/image19.png'),
                      PaymentCard(image: 'assets/image20.png'),
                      PaymentCard(image: 'assets/image18.png'),
                      PaymentCard(image: 'assets/image18.png'),
                      PaymentCard(image: 'assets/image20.png'),
                    ],
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

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  concertSummary()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ]
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