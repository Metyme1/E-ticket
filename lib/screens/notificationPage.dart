import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../widget/NavBar.dart';

class notificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'notification',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_sharp,
          color: Colors.black,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
        elevation: 0.0,
      ),
      body: Container(
        height: 70,
        padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        color: platte.lightOrange,
        child: Row(
          children: [
            Icon(
              Icons.circle,
              color: Colors.red,
              size: 10,
            ),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                "Your Password is successfully changed",
                style: TextStyle(
                  color: Colors.black,
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
    );
  }

  void showNotification(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }
}