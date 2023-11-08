import 'package:eticket2/config/platte.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geocoding_platform_interface/geocoding_platform_interface.dart';
import 'package:flutter/material.dart';
import '../../widget/NavBar.dart';
import '../../widget/buscard.dart';
import '../../widget/customButton.dart';
import 'TravelPayment.dart';
import 'package:intl/intl.dart';

class BusBookingPage extends StatefulWidget {
  final double latitude;
  final double longitude;


  BusBookingPage({required this.latitude, required this.longitude});


  @override
  State<BusBookingPage> createState() => _BusBookingPageState();
}

class _BusBookingPageState extends State<BusBookingPage> {
  String placeName = '';
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
    _convertCoordinatesToPlaceName();
  }

  List<bool> isSelectedList = List.generate(28, (index) => false);
  TextEditingController textField1Controller = TextEditingController();
  TextEditingController textField2Controller = TextEditingController();
  TextEditingController textField3Controller = TextEditingController();
  TextEditingController textField4Controller = TextEditingController();
  bool areFieldsFilled = false;

  bool isAllFieldsFilled() {
    return textField1Controller.text.isNotEmpty &&
        textField2Controller.text.isNotEmpty &&
        textField4Controller.text.isNotEmpty ;

  }


  Widget build(BuildContext context) {
    _convertCoordinatesToPlaceName();

    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(

          padding: const EdgeInsets.all(.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.bus_alert,
                        size: 48.0,

                      ),
                      Text("Booking Bus Ticket")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 30, right: 20,),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.location_on),
                      Text("From"),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: TextFormField(
                          controller: textField1Controller,
                          decoration: InputDecoration(
                            hintText: placeName.isNotEmpty
                                ? placeName
                                : 'Place Name',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),

                          ),
                          onChanged: (value) {
                            setState(() {
                              areFieldsFilled = isAllFieldsFilled();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 20,),
                  child: Row(

                    children: <Widget>[

                      Icon(Icons.location_on),
                      Text("To"),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: TextFormField(
                          controller: textField2Controller,
                          decoration: InputDecoration(
                            hintText: 'Hawassa',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),

                          ),
                          onChanged: (value) {
                            setState(() {
                              areFieldsFilled = isAllFieldsFilled();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 6.0),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 20,),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 16.0),
                      Icon(Icons.calendar_month),
                      Text("Date"),
                      SizedBox(width: 10,),
                      Expanded(
                        child: TextFormField(

                          decoration: InputDecoration(
                            hintText: selectedDate != null
                                ? DateFormat('dd/MM/yy').format(selectedDate!)
                                : 'dd/MM/yy',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                            suffixIcon: IconButton(
                              icon: Icon(Icons.calendar_today),
                              onPressed: () {
                                _showDatePicker(context);
                              },
                            ),
                          ),
                          // onChanged: (value) {
                          //   setState(() {
                          //     areFieldsFilled = isAllFieldsFilled();
                          //   });
                          // },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                    padding: const EdgeInsets.only(left: 30, right: 20),
                    child:
                    Row(
                      children: [
                        Icon(Icons.bus_alert),
                        Text("Bus \nCompany"),
                        SizedBox(width: 10,),
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(50.0),
                                  ),
                                ),
                                builder: (BuildContext context) {
                                  return ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(50.0),
                                      topRight: Radius.circular(50.0),
                                    ),
                                    child: Container(
                                      height: 600,
                                      child: SingleChildScrollView(
                                        child: Container(

                                          padding: EdgeInsets.all(16.0),
                                          child: Column(
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Available Buses',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight
                                                          .bold,
                                                    ),
                                                  ),
                                                  IconButton(
                                                    icon: Icon(Icons.close),
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop(); // Close the bottom sheet
                                                    },
                                                  ),
                                                ],
                                              ),
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  'choose one',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 16),
                                              BusCard(
                                                busName: 'Selam Bus',
                                                seatAvailability: '13',
                                                date: 'Date 1',
                                                price: '1200 ETB',
                                                imageAsset: 'assets/selam.jpg',
                                              ),
                                              SizedBox(height: 20,),
                                              BusCard(
                                                busName: 'Gihon Bus',
                                                seatAvailability: '14',
                                                date: 'Date 2',
                                                price: '1200 ETB',
                                                imageAsset: 'assets/gihon.jpeg',
                                              ),
                                              SizedBox(height: 20,),
                                              BusCard(
                                                busName: 'Sky  Bus',
                                                seatAvailability: '15',
                                                date: 'Date 3',
                                                price: '1200 ETB',
                                                imageAsset: 'assets/sky.jpeg',
                                              ),
                                              BusCard(
                                                busName: 'Habesha  Bus',
                                                seatAvailability: '15',
                                                date: 'Date 3',
                                                price: '1200 ETB',
                                                imageAsset: 'assets/habesha.jpeg',
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextFormField(
                                  enabled: false,
                                  decoration: InputDecoration(
                                    labelText: 'Choose Bus Company',
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 8.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 10),
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      Text("Passengers"),
                      Expanded(
                        child: TextFormField(
                          controller: textField4Controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            contentPadding: EdgeInsets.symmetric(vertical: 8.0),
                          ),
                          onChanged: (value) {
                            setState(() {
                              areFieldsFilled = isAllFieldsFilled();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5,),
                Divider(
                  color: Colors.grey[300], // Set the desired color
                  height: 20, // Set the desired height
                  thickness: 2, // Set the desired thickness
                ),


                Opacity(
                  opacity: areFieldsFilled ? 1.0 : 0.2,
                  child: Row(
                    children: [

                      Column(
                        children: [
                          Text("Select Seats(3/5)"),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.rectangle, size: 30,
                                  color: Colors.red,),

                                Text(" Taken Seat")
                              ],
                            ),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.rectangle, size: 30,
                                  color: Colors.green,),

                                Text(" avaliable seat")
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Row(
                              children: [
                                Icon(Icons.rectangle, size: 30,
                                  color: Colors.blue,),

                                Text(" seats you selected")
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),

                        ],
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 280,
                        width: 200,
                        color: Colors.grey[200],
                        child: GridView.count(
                          crossAxisCount: 4,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 4.0,
                          childAspectRatio: 1.2,
                          children: List.generate(
                            28,
                                (index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isSelectedList[index] =
                                    !isSelectedList[index];
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: isSelectedList[index]
                                        ? Colors.blue
                                        : Colors.green,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  margin: EdgeInsets.all(2),
                                  child: Center(
                                    child: Text(
                                      (index + 1).toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),

                              );
                            },
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


                SizedBox(height: 10,),
                Center(
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    child: CustomButton(
                      text: 'proceed Payment',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TravelPayment()),
                        );
                      },
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        destinations: destinations,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
      ),

    );
  }

  Future<void> _convertCoordinatesToPlaceName() async {
    try {
      List<Placemark> placemarks =
      await placemarkFromCoordinates(widget.latitude, widget.longitude);

      if (placemarks != null && placemarks.isNotEmpty) {
        Placemark placemark = placemarks[0];

        setState(() {
          placeName = placemark.name ?? '';
        });
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      // Customize the calendar theme
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: platte.orange, // Set the primary color to orange
            hintColor: platte.orange, // Set the accent color to orange
            colorScheme: ColorScheme.light(
              primary: platte.orange, // Set the primary color of the color scheme to orange
            ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
}