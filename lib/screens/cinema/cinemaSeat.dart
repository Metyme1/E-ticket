import 'package:flutter/material.dart';

import 'cinemaPayment.dart';

class CinemaSeatPage extends StatefulWidget {
  const CinemaSeatPage({Key? key}) : super(key: key);

  @override
  _CinemaSeatPageState createState() => _CinemaSeatPageState();
}

class _CinemaSeatPageState extends State<CinemaSeatPage> {
  List<List<bool>> seatStatus = [
    [true, true, false, true], // Row 1
    [true, false, true, true], // Row 2
    [true, true, true, false], // Row 3
    [false, true, true, true], // Row 4
    [true, true, true, true, true], // Row 5
    [true, true, true, false, true], // Row 6
    [true, true, true, true, true], // Row 7
    [true, false, true, true, true], // Row 8
  ];

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
            'Cinema Seat',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: List.generate(
              seatStatus.length,
                  (row) {
                return buildSeatRow(row);
              },
            ),
          ),
        ),
      ),
      floatingActionButton: Positioned(
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
                  primary: Colors.orange, // Set the background color
                  minimumSize: Size(360, 50), // Set the width and height
                ),
                onPressed: () {
                  // Navigate to the payment page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => cinemaPayment()),
                  );
                },
                child: Text('Select Seat'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSeatRow(int row) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          seatStatus[row].length,
              (column) {
            final seatStatusValue = seatStatus[row][column];
            final seatColor = seatStatusValue ? Colors.black : Colors.grey[200];
            final seatText = seatStatusValue ? 'H${row + 1}-${column + 1}' : 'Unavailable';
            final isSeatSelected = seatStatusValue ? false : true;
            final seatSelectedColor = Colors.orange;

            return GestureDetector(
              onTap: seatStatusValue
                  ? () {
                setState(() {
                  seatStatus[row][column] = !seatStatus[row][column];
                });
              }
                  : null,
              child: Container(
                width: 40.0,
                height: 40.0,
                margin: EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  color: isSeatSelected ? seatSelectedColor : seatColor,
                  borderRadius: BorderRadius.circular(4.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                ),
                child: Center(
                  child: Text(
                    seatText,
                    style: TextStyle(
                      color: isSeatSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

