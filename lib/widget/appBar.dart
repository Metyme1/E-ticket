import 'package:flutter/material.dart';

import '../screens/notificationPage.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  final Function()? onNotificationPressed;

  CustomAppBar({required this.title, this.onNotificationPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            children: [
              Stack(
                children: [
                  IconButton(
                    icon: Stack(
                      children: [
                        Icon(
                          Icons.notification_important,
                          color: Colors.black,
                          size: 30,
                        ),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.red,
                            ),
                            constraints: BoxConstraints(
                              minWidth: 18,
                              minHeight: 18,
                            ),
                            child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    onPressed: () {
                      // Navigate to the notification page here
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => notificationPage()),
                      );
                    },
                  ),

                ],
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/image5.png'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}