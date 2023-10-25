import 'package:flutter/material.dart';

class notificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('notification',
        style: TextStyle(
          color: Colors.black
        ),),
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

            },
          ),
        ],
        elevation: 0.0,
      ),
      body: Row(
        children: [
          Icon(Icons.circle,
          color: Colors.red
            ,),
          Text("Your Password is sucessfully chnaged",
          style: TextStyle(
            color: Colors.black,

          ),)

        ],
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