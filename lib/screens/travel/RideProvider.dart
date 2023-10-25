import 'package:eticket2/screens/travel/ride.dart';
import 'package:flutter/material.dart';

class RideProviderPage extends StatefulWidget {
  @override
  _RideProviderPageState createState() => _RideProviderPageState();
}

class _RideProviderPageState extends State<RideProviderPage> {
  double _containerHeight = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 400.0,
              child: Image.asset(
                'assets/map.jpeg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          GestureDetector(
            onVerticalDragUpdate: (details) {
              setState(() {
                _containerHeight += details.delta.dy;
                if (_containerHeight < 200.0) {
                  _containerHeight = 300.0;
                }
              });
            },
            child: Container(
              height: _containerHeight,
                child: ListView(
                  padding: EdgeInsets.all(16.0),
                  children: [
                    RideProviderItem(
                      providerName: 'Feres',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RidePage()),
                        );
                      }, imagePath: 'assets/ride.png',
                    ),
                    RideProviderItem(


                      providerName: 'Feres',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RidePage()),
                        );
                      }, imagePath: 'assets/feres.png',
                    ),
                    RideProviderItem(

                      providerName: 'Zay Ride',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RidePage()),
                        );
                      }, imagePath: 'assets/zayride.jpeg'
                    ),
                    RideProviderItem(

                      providerName: 'Taxiye',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => RidePage()),
                        );
                      }, imagePath: 'assets/taxiye.png',
                    ),
                  ],
                ),
            ),
          ),
        ],
      ),
    );
  }
}
class RideProviderItem extends StatelessWidget {
  final String imagePath;

  final String providerName;
  final VoidCallback onPressed;

  const RideProviderItem({
    required this.imagePath,

    required this.providerName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: _buildLeading(),
      title: Text(providerName),
      onTap: onPressed,
    );
  }

  Widget _buildLeading() {
    return Image.asset(
      imagePath,
      width: 50.0,
      height: 50.0,

    );
  }
}