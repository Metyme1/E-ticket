

import 'package:eticket2/screens/concert/concertPayment.dart';
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';
import 'concertTicket.dart';

class concertSummary extends StatelessWidget {
  const concertSummary({Key? key}) : super(key: key);

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
              'Order Summary',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        height: 100,
                          width: 100,
                          child: Image.asset('assets/image5.png')),
                    ),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'concert1',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(text: '\n\n\n'),
                          TextSpan(
                            text: 'Dubai Concert',
                          ),
                          TextSpan(text: '\n\n'),
                          TextSpan(
                            text: 'Wednesday, 20 Nov 2019 15:05',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
                SizedBox(height: 30,),
                Text("Order Number",
                style:TextStyle(
                  color: Colors.grey
                )),
                Text("11988047894562442",
                style: TextStyle(
                  fontSize: 18
                ),),
                SizedBox(height: 15,),
                Text("Seat",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Text("Regular Seat",
                  style: TextStyle(
                      fontSize: 18
                  ),),
                SizedBox(height: 15,),
                Text("Payment Method",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Text("Chappa",
                  style: TextStyle(
                      fontSize: 18
                  ),),
                SizedBox(height: 15,),
                Text("Regular Seat",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Text("ETB 500",
                  style: TextStyle(
                      fontSize: 18
                  ),),
                SizedBox(height: 15,),
                Text("Convience Fee",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Text("ETB 50",
                  style: TextStyle(
                      fontSize: 18
                  ),),
                SizedBox(height: 15,),
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
                Text("Actual Pay",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Text("ETB 500",
                  style: TextStyle(
                      fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),
                SizedBox(height: 60,),

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
                          text: 'Confirm Payment',
                          onPressed: () {
// Navigate to the payment page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => concertPayment()),
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
