import 'package:eticket2/config/platte.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeatCard extends StatelessWidget {
  final String busName;
  final String seatAvailability;
  final String date;
  final String price;

  const SeatCard ({
    required this.busName,
    required this.seatAvailability,
    required this.date,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: platte.orange),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 400,
        child: Card(
          color: Colors.white,
          child: ListTile(

            title: Text(busName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'Date: ',
                        style: TextStyle(

                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(text: date,
                          style: TextStyle(
                              color: Colors.grey
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text: 'Seat left: ',
                        style: TextStyle(

                          color: Colors.grey,
                        ),
                      ),
                      TextSpan(text: seatAvailability),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.bottomRight,
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: 'Price: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(text: price),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}