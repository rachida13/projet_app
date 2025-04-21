// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          /* actions: [
            Icon(Icons.exit_to_app),
          ],*/
          backgroundColor: Colors.blue,
        ),
        body: Container(
          color: Colors.white,
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Padding(
                // ignore: duplicate_ignore
                // ignore: prefer_const_constructors
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    Text(
                      'Create account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 10,
                    ),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    Text(
                      'Enter your Personal Data',
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                      ),
                    ),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'username',
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.person),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      focusedBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Email',
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.email),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      focusedBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Phone Number',
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.phone),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      focusedBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Password',
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.lock),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      enabledBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      focusedBorder: OutlineInputBorder(
                        // ignore: duplicate_ignore
                        // ignore: prefer_const_constructors
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: false,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    // ignore: duplicate_ignore
                    // ignore: prefer_const_constructors
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      // ignore: duplicate_ignore
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.lock),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: false,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    SizedBox(height: 20),
                    SizedBox(
                        width: 220,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/profilpage');
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                          ),
                          child: Text('Signup ',
                              style: TextStyle(
                                fontSize: 18,
                              )),
                        )),
                    SizedBox(height: 20),
                    Center(child: Text('_________Or________')),
                    SizedBox(height: 20),
                    SizedBox(
                      width: 220,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        child: Text(
                          'Continue with google ',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                          ),
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                             Navigator.of(context).pushNamed('/login');
                             
                            },
                            style: TextButton.styleFrom(
                                foregroundColor: Colors.blue),
                            child: Text('Login',
                                style: TextStyle(
                                    decoration: TextDecoration.underline)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
//hintText: