import 'package:flutter/material.dart';

class BusPage extends StatelessWidget {
@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Bus'),
    ),
    body: Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Text(
          'Bus Page',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24.0,
          ),
        ),
      ),
    ),
  );
}
}