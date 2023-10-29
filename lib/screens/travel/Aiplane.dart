import 'package:flutter/material.dart';

class AirplanePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Airplane'),
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'Airplane Page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}