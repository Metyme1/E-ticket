
import 'package:eticket2/screens/cinema/CinemaPage.dart';
import 'package:eticket2/screens/football/FootballPage.dart';
import 'package:eticket2/screens/travel/TravelPage.dart';
import 'package:eticket2/screens/concert/concertPage.dart';
import 'package:eticket2/screens/conference/conferencePage.dart';
import 'package:eticket2/screens/login.dart';
import 'package:eticket2/screens/splash/splash1.dart';
import 'package:eticket2/screens/splash/splash2.dart';
import 'package:eticket2/screens/splash/splash3.dart';
import 'package:eticket2/screens/welcome.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EthiTicketify',
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomePage(),
        '/splash1': (context) => SplashScreen1(),
        '/splash2': (context) => SplashScreen2(),
        '/splash3': (context) => SplashScreen3(),
        '/login': (context) => LoginScreen(),
        '/conference': (context) => ConferencePage(),
        '/cinema': (context) => CinemaPage(),
        '/football': (context) => FootballPage(),
        '/concert': (context) => ConcertPage(),
        '/travel': (context) => TransportationPage(),

      },
    );
  }
}