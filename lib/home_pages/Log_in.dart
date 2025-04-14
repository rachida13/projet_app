import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam_app/home_pages/Sign_up.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Welcome back!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'images/photo33.jpeg',
                    height: 190,
                    width: 400,
                  ),
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
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/forgotpassword');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                      child: Text('forget password?'),
                    ),
                  ),
                  SizedBox(height: 10),
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
                      child: Text('Login',
                          style: TextStyle(
                            fontSize: 18,
                          )),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                      child: Text('________Or sign up with google _________')),
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
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "i don't have account?",
                        style: TextStyle(color: Colors.black, fontSize: 12),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/signup');
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.blue),
                        child: Text('sign up',
                            style: TextStyle(
                                decoration: TextDecoration.underline)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
