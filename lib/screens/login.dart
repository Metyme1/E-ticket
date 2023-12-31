import 'package:eticket2/screens/signup%20page.dart';
import 'package:flutter/material.dart';
import 'package:eticket2/config/platte.dart';
import 'DiscoverPage.dart';




class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(

          child: Container(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/logo2.png',
                        width: 100,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'welcome Back!',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                  width: 300,
                  child: Column(
                    children: [
                      TextField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.email),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                        ),
                      ),
                      SizedBox(height: 16.0),
                      TextField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        obscureText: !_isPasswordVisible,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: _isPasswordVisible ? Colors.blue : Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            },
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(), // Placeholder to align to the right
                          TextButton(
                            onPressed: () {
                              // Navigate to forgot password screen
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10.0),
                      Column(
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              onPressed: () {

                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DiscoverPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                primary: platte.darkblue
                              ),
                              child: Text(
                                'Login',
                                style: TextStyle(color: platte.lightOrange,fontSize: 18),

                              ),
                            ),
                          ),
                          SizedBox(height: 8.0), // Add some spacing between the button and the text
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account? ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => signup(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'SIGN UP',
                                  style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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