
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import '../../widget/customButton.dart';
import '../cinema/cinemaTicket.dart';
import '../conference/conferenceTicket.dart';
import 'TravelTicket.dart';

class TravelSummary extends StatelessWidget {
  const  TravelSummary({Key? key}) : super(key: key);

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
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/loc.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [

                SizedBox(height: 150,),
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
                Text("B2,D2,D3",
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
                Row(
                  children: [
                    Text(
                      '1200ETB',
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

                SizedBox(height: 15,),
                Text("Convience Fee",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Row(
                  children: [
                    Text(
                      '50ETB',
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
                SizedBox(height: 15,),
                DividerTheme(
                  data: DividerThemeData(
                    thickness: 1, // Increase thickness for a bolder line
                  ),
                  child: Container(
                    height: 30, // Increase height to increase the space taken by the Divider
                    child: Divider(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Text("Actual Pay",
                    style:TextStyle(
                        color: Colors.grey
                    )),
                Text("ETB 3700",
                  style: TextStyle(
                      fontSize: 29,
                      fontWeight: FontWeight.bold
                  ),),
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
                              MaterialPageRoute(builder: (context) => TravelTicket()),
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
