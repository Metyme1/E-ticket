import 'package:eticket2/config/platte.dart';
import 'package:flutter/material.dart';

import '../../widget/NavBar.dart';
import 'RideProvider.dart';

class DestinationPage extends StatelessWidget {
  const DestinationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Center(
            child: Text(
              'Enter Destination',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(16.0),



          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [

                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 30.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                hintText: 'Enter pick up location',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),

              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: platte.orange,
                        ),
                        SizedBox(width: 20),
                        Expanded(
                          child: Container(
                            height: 30.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[200],
                                hintText: 'Enter drop-off location',
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(8.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey,
                height: 16.0,
                thickness: 2.0,
              ),

              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.location_on,color: platte.orange,),
                        SizedBox(width: 8.0),
                        Text('Minilium hall',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),),
                      ],
                    ),
                    Row(
                      children: [

                        SizedBox(width: 8.0),
                        Text('Addis abeba',
                        style: TextStyle(
                          color: Colors.grey
                        ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: platte.orange,
                      height: 16.0,
                      thickness: 2.0,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: platte.orange),
                        SizedBox(width: 8.0),
                        Text('Minilium hall',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),),
                      ],
                    ),
                    Row(
                      children: [

                        SizedBox(width: 8.0),
                        Text('Addis abeba',
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: platte.orange,
                      height: 16.0,
                      thickness: 2.0,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color: platte.orange,),
                        SizedBox(width: 8.0),
                        Text('Minilium hall',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),),
                      ],
                    ),
                    Row(
                      children: [

                        SizedBox(width: 8.0),
                        Text('Addis abeba',
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      color: platte.orange,
                      height: 16.0,
                      thickness: 2.0,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Icon(Icons.location_on,color:platte.orange,),
                        SizedBox(width: 8.0),
                        Text('Minilium hall',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15
                          ),),
                      ],
                    ),
                    Row(
                      children: [

                        SizedBox(width: 8.0),
                        Text('Addis abeba',
                          style: TextStyle(
                              color: Colors.grey
                          ),),
                      ],
                    ),
                    SizedBox(height: 40,),
                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: platte.orange,
                        ),
                        onPressed: () {
                          // Route to the provider ride page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RideProviderPage()),
                          );
                        },
                        child: Text('Choose Ride Provider'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          destinations: destinations,
          backgroundColor: Colors.white,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
        ),
      ),
    );
  }
}