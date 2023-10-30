import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';

class FootballPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Football Page'),
      ),
      body: Center(
        child: Text('Football Page Content'),
      ),
      bottomNavigationBar: CustomNavigationBar(
        destinations: destinations,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}