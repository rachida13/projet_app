import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:exam_app/home_pages/Log_in.dart';
import 'package:exam_app/home_pages/Sign_up.dart';

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
          SizedBox(
            height: 120,
          ),
          Text(
            'Welcome!',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(),
          Image.asset(
            'images/hello.jpeg',
            height: 430,
            width: double.infinity,
          ),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: 200,
            height: 45,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/signup');
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                ),
                child: Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                )),
          ),
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
                child: Text('Login',
                    style: TextStyle(
                      fontSize: 25,
                    ))),
          ),
        ],
      ),
    ));
  }
}
