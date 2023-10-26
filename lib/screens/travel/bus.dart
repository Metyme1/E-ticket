import 'package:flutter/material.dart';

class BusPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(

    body:Padding(
      padding: const EdgeInsets.all(40.0),
      child:Column(
        children: [
          Row(
            children: [
              Icon(Icons.car_crash_outlined, size: 40),
              Text("Booking bus ticket"),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.location_on),
              Text("From"),
              SizedBox(width: 30),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Source',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.location_on),
              Text("To"),
              SizedBox(width: 52),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Destination',
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(Icons.date_range),
              Text("Date"),
              SizedBox(width: 30),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Select date',
                ),
              ),
            ],
          ),
        ],
      )
    )
  );
}
}