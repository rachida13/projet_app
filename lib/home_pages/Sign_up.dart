import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam_app/home_pages/Profil_page.dart';
import 'package:exam_app/home_pages/Log_in.dart';

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
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Create account',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Enter your Personal Data',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'username',
                      icon: Icon(Icons.person),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Email',
                      icon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Phone Number',
                      icon: Icon(Icons.phone),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.5),
                      ),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5),
                    )),
                    SizedBox(height: 20),
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Password',
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
                    TextField(
                        decoration: InputDecoration(
                      labelText: 'Confirm Password',
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