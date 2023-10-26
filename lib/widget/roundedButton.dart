import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final String buttonText;
  final Color color;
  final bool isSelected;
  final VoidCallback onPressed;

  RoundedButton({
    required this.buttonText,
    required this.color,
    required this.isSelected,
    required this.onPressed,
  });

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.orange : Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            widget.isSelected
                ? Icon(
              Icons.check_circle,
              color: Colors.white,
            )
                : Container(),
            SizedBox(width: 8),
            Text(
              widget.buttonText,
              style: TextStyle(
                color: widget.isSelected ? Colors.white : Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}