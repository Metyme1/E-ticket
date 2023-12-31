import 'package:eticket2/config/platte.dart';
import 'package:eticket2/widget/seatcard.dart';
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';
import '../../widget/paymentcard.dart';
import 'conferenceTicket.dart';


class PaymentPage extends StatefulWidget {
  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  String selectedSeatType = 'Select Seat Type';

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
              'Payment Method',
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
              Row(
                children: [
                  Container(
                    width: 350,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(5),
                    ),
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
                                                    selectedSeatType = 'VVIP';
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
                          }
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
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: platte.orange,
                            width: 2.0,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            selectedSeatType,
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
                    '400ETB',
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
                  '450Etb',
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
                                MaterialPageRoute(builder: (context) => MyTicketPage()),
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