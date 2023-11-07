import 'package:eticket2/screens/travel/taxi.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../../widget/NavBar.dart';
import 'Aiplane.dart';
import 'bus.dart';

class TransportationPage extends StatefulWidget {

  @override
  State<TransportationPage> createState() => _TransportationPageState();
}

class _TransportationPageState extends State<TransportationPage> {

  void _showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
    );
  }

  Future<Position> getlo() async {
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      _showSnackBar('Location services disabled');
      return Future.error('Location services disabled');
    }

    final LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      final LocationPermission permissionRequestResult =
      await Geolocator.requestPermission();
      if (permissionRequestResult == LocationPermission.denied) {
        _showSnackBar('Location permission denied');
        return Future.error('Location permission denied');
      } else if (permissionRequestResult == LocationPermission.deniedForever) {
        _showSnackBar('Location permission permanently denied');
        return Future.error('Location permission permanently denied');
      }
    }

    final Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    return position;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Container(


          padding: EdgeInsets.only(top: 100,left: 20,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.emoji_transportation,
                    size: 48.0, // Set the desired size
                  ),
                  Text("transportation")
                ],
              ),
              SizedBox(height: 20,),
              Text(
                'Available Options',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                'Choose seat',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TaxiPage()),
                  );
                },
                icon: Icon(Icons.directions_car),
                label: Text('Taxi'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: Size(200, 60),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton.icon(
                onPressed: () {
                  getlo().then((position) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BusBookingPage(latitude: position.latitude, longitude: position.longitude)),
                    );
                  }).catchError((error) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text('$error'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  });
                },
                icon: Icon(Icons.directions_bus),
                label: Text('Bus'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: Size(200, 60),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AirplanePage()),
                  );
                },
                icon: Icon(Icons.airplanemode_active),
                label: Text('Airplane'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.grey[200],
                  onPrimary: Colors.black,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  minimumSize: Size(200, 60),
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




