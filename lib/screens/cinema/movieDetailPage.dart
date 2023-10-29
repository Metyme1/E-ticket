import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import 'cinemaSeat.dart';
class MovieDetailPage extends StatefulWidget {

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  int selectedIndex = 0;
  int selected2Index=0;
  String selectedCinema = 'Cinema 1';
  List<String> avaliable = [

    "15:05 12 seats Availiable",
    "15:05 12 seats Availiable",
    "15:05 12 seats Availiable",
    // Add more movie titles as needed
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: SingleChildScrollView(

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/image16.png',
                      fit: BoxFit.cover,
                    ),
                    Container(
                      padding: EdgeInsets.all(26.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 80,),
                          Text(
                            'The Creator',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.orange,
                                size: 15,
                              ),
                              SizedBox(width: 8),
                              Text(
                                '8.9/10 from IMDb',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              ElevatedButton(
                                  onPressed: () {
                                    // Execute your action for the "Horror" button
                                  },
                                style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                                    ),
                                  ),
                                ),
                                  child: Text(
                                    'Horror',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                              SizedBox(width: 16),
                               ElevatedButton(
                                  onPressed: () {
                                    // Execute your action for the "Drama" button
                                  },
                                 style: ButtonStyle(
                                   backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                     RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(20), // Adjust the value to change the roundness
                                     ),
                                   ),
                                 ),
                                  child: Text(
                                    'Drama',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Image.asset(
                          'assets/image12.png', // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Director:',
                                  style: TextStyle(
                                    fontSize: 15.0,

                                  ),
                                ),
                               SizedBox(width: 10,),
                                Text(
                                  ' The creator',
                                  style: TextStyle(

                                   color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text(
                                  'Writer:',
                                  style: TextStyle(
                                    fontSize: 15.0,

                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  ' joko anwar',
                                  style: TextStyle(

                                      color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text(
                                  'Duration:',
                                  style: TextStyle(
                                    fontSize: 15.0,

                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  ' 1hr 35 minute',
                                  style: TextStyle(

                                      color: Colors.black
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15,),
                            Row(
                              children: [
                                Text(
                                  'Rating:',
                                  style: TextStyle(
                                    fontSize: 15.0,

                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text(
                                  ' D(17+)',
                                  style: TextStyle(

                                      color: Colors.black
                                  ),
                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    "Schedule",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 70.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedIndex = index; // Update the selected index
                          });
                        },
                        child:
                        Container(
                          width: 80.0,
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: index == selectedIndex ? platte.orange: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.black38,
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                              child: Text(
                                '${index + 20} Nov, \n2023',
                                style: TextStyle(
                                  color: index == selectedIndex ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("Select Seat",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                  ),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: DropdownButton<String>(
                    value: selectedCinema,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedCinema = newValue!;
                      });
                    },
                    items: <String>['Cinema 1', 'Cinema 2', 'Cinema 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text("GOLD 2D"),
                    ),
                  SizedBox(width: 240,),
                  Text("ETB 500")
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 60.0,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selected2Index = index; // Update the selected index
                          });
                        },
                        child:
                        Container(
                          width: 120.0,
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: index == selected2Index ? platte.orange: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(
                              color: Colors.black38,
                              width: 1.0,
                            ),
                          ),
                          child: Center(
                              child: Text(
                                avaliable[index],
                                style: TextStyle(
                                  color: index == selected2Index ? Colors.white : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                          ),
                        ),
                      );
                    },
                  ),
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:  platte.orange, // Set the background color
                            minimumSize: Size(360, 50), // Set the width and height
                          ),
                          onPressed: () {
                            // Navigate to the payment page
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => CinemaSeatPage()),
                            );
                          },
                          child: Text('select seat'),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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