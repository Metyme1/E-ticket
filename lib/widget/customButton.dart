import 'package:flutter/material.dart';
import 'package:eticket2/config/platte.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: platte.orange, // Customize the button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // Customize the border radius
          ),
          minimumSize: Size(300, 50), // Customize the button size
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}