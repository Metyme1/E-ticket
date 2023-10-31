import 'package:flutter/material.dart';

class PaymentCard extends StatelessWidget {
  final String image;

  const PaymentCard({required this.image});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[200], // Set the color of the Card widget
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 50,
            height: 50,
          ),
          SizedBox(height: 15),

        ],
      ),
    );
  }
}