import 'package:flutter/material.dart';
class RideProviderItem extends StatelessWidget {
  final String imagePath;
  final String providerName;
  final int availableSeats;
  final VoidCallback onPressed;

  const RideProviderItem({
    required this.imagePath,
    required this.providerName,
    required this.availableSeats,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: _buildLeading(),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

                Text(
                  providerName,
                  style: TextStyle(fontSize: 16.0),
                ),


         
            SizedBox(height: 4.0),
            Row(
              children: [
                Text(
                  'Available Seats: $availableSeats',
                  style: TextStyle(fontSize: 12.0, color: Colors.grey[700]),
                ),
                SizedBox(width: 140,),
                Icon(Icons.arrow_forward_ios_sharp)
              ],
            ),


          ],
        ),
        onTap: onPressed,
      ),
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