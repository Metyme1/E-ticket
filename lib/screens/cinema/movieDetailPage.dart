import 'package:flutter/material.dart';
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
    "15:05\n 12 seats Availiable",
    "15:05\n 12 seats Availiable",
    // Add more movie titles as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
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
                    padding: EdgeInsets.all(16.0),

                    child: Text(
                      'The Creator',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
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
                          color: index == selectedIndex ? Colors.orange: Colors.grey[200],
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
              SizedBox(height: 15,),
              Text("Select Seat",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),),
              DropdownButton<String>(
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

              Row(
                children: [
                  Text("GOLD 2D"),
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
                          color: index == selected2Index ? Colors.orange: Colors.grey[200],
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
                          primary:  Colors.orange, // Set the background color
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
      ),
    );
  }
}