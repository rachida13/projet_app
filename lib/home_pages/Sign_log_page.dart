// ignore: duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names, duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class SignLogPage extends StatelessWidget {
  const SignLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
             shape: Positioned.fill(child: CustomPaint(painter: BackgroundPainter())),
      ),*/
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 120,
          ),
          // ignore: prefer_const_constructors
          Text(
            'Welcome!',
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(),
          Image.asset(
            'images/hello.jpeg',
            height: 430,
            width: double.infinity,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed('/signup');
                  Navigator.of(context).pushNamed('/ AlphabetPage');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                // ignore: prefer_const_constructors
                child: Text(
                  'Sign up',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/login');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.white,
                ),
                // ignore: prefer_const_constructors
                child: Text('Login',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 25,
                    ))),
          ),
        ],
      ),
    ));
  }
}
