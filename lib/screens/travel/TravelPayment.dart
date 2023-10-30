import 'package:eticket2/config/platte.dart';
import 'package:eticket2/screens/cinema/cinemaSummary.dart';
import 'package:eticket2/screens/travel/TravelSummary.dart';
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';
import '../../widget/paymentcard.dart';



class TravelPayment extends StatelessWidget {
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
                        '500 ETB',
                        style: TextStyle(
                          fontSize: 18,


                        ),
                      ),
                      Text("*3",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey
                        ),),
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
                      '50 ETB',
                      style: TextStyle(
                        fontSize: 18,

                      ),
                    ),
                    Text("*3",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey
                      ),),
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
                      '3750 ETB',
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
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: platte.orange, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: PaymentCard(
                          image: 'assets/download.png',
                        ),
                      ),
                      PaymentCard(image: 'assets/image19.png'),
                      PaymentCard(image: 'assets/image20.png'),
                      PaymentCard(image: 'assets/image18.png'),
                      PaymentCard(image: 'assets/image18.png'),
                      PaymentCard(image: 'assets/image20.png'),
                    ],
                  ),
                  Container(
                    child: Expanded(
                      child: Align(
                        alignment: Alignment.bottomCenter,
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
                                    MaterialPageRoute(builder: (context) => TravelSummary()),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
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