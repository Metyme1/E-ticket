import 'package:flutter/material.dart';
import 'package:eticket2/config/platte.dart';
import 'DiscoverPage.dart';
import 'login.dart';




class signup extends StatefulWidget {
  @override
  _signupState createState() => _signupState();
}

class _signupState extends State<signup> {
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

                      SizedBox(height: 10),
                      Text(
                        'Welcome !',
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
                  width:300,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'or',
                              style: TextStyle(fontSize: 20,),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Colors.black,
                              height: 1,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.0),
                      TextField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Phone Number',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.phone),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 16.0),
                        ),
                      ),
                      SizedBox(height: 16.0),

                      TextField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'UserName',
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.person),
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
                      SizedBox(height: 16.0),
                      TextField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                        },
                        obscureText: !_isPasswordVisible,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          labelText: 'Confirm Password',
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
                      SizedBox(height: 30,),

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
                                'Sign Up',
                                style: TextStyle(color: platte.lightOrange,fontSize: 18),
                              ),
                            ),
                          ),

                          SizedBox(height: 8.0),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/facebook.png'),
                                ),
                                SizedBox(width: 16),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/Google.png'),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Already has an Account ? ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginScreen(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Login',
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