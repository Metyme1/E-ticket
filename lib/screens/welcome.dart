import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:platte.darkblue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/image23.png'),
                  Image.asset('assets/image17.png'),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/splash1'); // Replace '/splash1' with the route to SplashScreen1
              },
              child: Container(
                color: Colors.transparent,
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.arrow_circle_right_rounded,
                      color: platte.yellow,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}