//
// import 'package:eticket2/screens/seatYpeConference.dart';
// import 'package:flutter/material.dart';
//
//
// import '../widget/customButton.dart';
// import '../widget/paymentcard.dart';
// import 'conferenceTicket.dart';
//
// class PaymentPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int currentIndex = 0;
//
//
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           color: Colors.black,
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         title: Center(
//           child: Text(
//             'Payment Page',
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => SeatTypeConferencePage()),
//                     );
//                   },
//                   style: ElevatedButton.styleFrom(
//                     primary: Colors.grey, // Customize the button color
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10), // Customize the border radius
//                     ),
//                     padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24), // Customize the button padding
//                     maximumSize: Size(double.infinity, double.infinity), // Set maximum width
//                   ),
//                   child: Text(
//                     'Select Seat Type',
//                     style: TextStyle(
//                       fontSize: 18,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//
//             SizedBox(height: 16),
//             Row(
//               children: [
//                 Text(
//                   'Regular Seat:',
//                   style: TextStyle(
//                     fontSize: 15,
//
//                   ),
//                 ),
//                 SizedBox(width: 170,),
//                 Text(
//                   '400ETB',
//                   style: TextStyle(
//                     fontSize: 18,
//
//
//                   ),
//                 )
//               ],
//             ),
//
//             SizedBox(height: 16),
//             Row(children: [
//               Text(
//                 'Convenience Fee:',
//                 style: TextStyle(
//                   fontSize: 15,
//
//                 ),
//               ),
//               SizedBox(width: 140,),
//               Text(
//                 '50ETB',
//                 style: TextStyle(
//                   fontSize: 18,
//
//                 ),
//               ),
//             ],),
//             DividerTheme(
//               data: DividerThemeData(
//                 thickness: 1, // Increase thickness for a bolder line
//               ),
//               child: Container(
//                 height: 30, // Increase height to increase the space taken by the Divider
//                 child: Divider(
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             Row(children: [
//               Text(
//                 'Actual Pay',
//                 style: TextStyle(
//                   fontSize: 14,
//
//                 ),
//               ),
//               SizedBox(width: 190,),
//               Text(
//                 '450Etb',
//                 style: TextStyle(
//                   fontSize: 18,
//
//                 ),
//               ),
//             ],),
//             SizedBox(height: 16),
//             Text(
//               'Payment Method',
//               style: TextStyle(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height:30),
//             GridView.count(
//               crossAxisCount: 3,
//               shrinkWrap: true,
//               physics: NeverScrollableScrollPhysics(),
//               children: [
//                 PaymentCard(image: 'assets/image13.png'),
//                 PaymentCard(image: 'assets/image19.png'),
//                 PaymentCard(image: 'assets/image20.png'),
//                 PaymentCard(image: 'assets/image18.png'),
//                 PaymentCard(image: 'assets/image18.png'),
//                 PaymentCard(image: 'assets/image20.png'),
//               ],
//             ),
//             Positioned(
//
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: Container(
//                 padding: EdgeInsets.symmetric(vertical: 10),
//                 color: Colors.white,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     CustomButton(
//                       text: 'Order Summary',
//                       onPressed: () {
//                         // Navigate to the payment page
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => MyTicketPage()),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../widget/customButton.dart';
import '../../widget/paymentcard.dart';
import 'conferenceTicket.dart';

class SeatTypeDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Text(
              'Select Seat Type',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            SeatTypeCard(
              seatType: 'Seat Type 1',
              price: '200 ETB',
            ),
            SizedBox(height: 8),
            SeatTypeCard(
              seatType: 'Seat Type 2',
              price: '250 ETB',
            ),
            SizedBox(height: 8),
            SeatTypeCard(
              seatType: 'Seat Type 3',
              price: '300 ETB',
            ),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class SeatTypeCard extends StatelessWidget {
  final String seatType;
  final String price;

  const SeatTypeCard({
    required this.seatType,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(seatType),
        trailing: Text(price),
        onTap: () {
          // Handle seat type selection
          Navigator.pop(context);
        },
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
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
            Row(
              children: [
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SeatTypeDialog();
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.zero,
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Select Seat Type',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
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
          ]
        ),
      )
    );
  }
}