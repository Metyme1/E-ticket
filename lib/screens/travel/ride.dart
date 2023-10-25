import 'package:flutter/material.dart';

class RidePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            height: 300.0,
            child: Image.asset(
              'assets/map.jpeg', // Replace with your actual map image asset path
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 16.0),
          ListTile(
            leading: Icon(Icons.directions_car),
            title: Text('Feres'),
            subtitle: Text('5.6km'),

            onTap: () {
              // Implement your logic for the route action here
            },
          ),
          ListTile(
            leading: Icon(Icons.place),
            title: Text('Miliniuem Hall'),
            onTap: () {
              // Implement your logic for the place action here
            },
          ),
        ],
      ),
    );
  }
}