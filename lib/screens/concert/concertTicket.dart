import 'package:flutter/material.dart';


class concertTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back.png'), // Replace with your actual background image path
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image5.png', // Replace with your actual ticket image path
              width: double.maxFinite,
              height: 200,
            ),
            Text("ENKOBA SUMMMIT ADDIS",
                style:TextStyle(
                  fontSize: 25,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(Icons.location_on),
                Text("MEDO Hotel")
              ],

            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Date',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '20 Nov',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Hour',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '10:00',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                VerticalDivider(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Seats',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Regular',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),

              ],
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'BOOKING CODE',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '190991929432',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'pass key',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '1909919',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Image.asset(
              'assets/image7.png', // Replace with your actual ticket image path
              width: 300,
              height: 200,
            ),


          ],
        ),
      ),

    );
  }
}