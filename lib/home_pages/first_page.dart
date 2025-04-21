import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class FirstPage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _showArrow = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(height: 100),
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            child: Image.asset(
              'images/photo1.jpeg',
              height: 530,
              width: 460,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                setState(() {
                  _showArrow = true;
                });

                // ignore: prefer_const_constructors
                Future.delayed(Duration(milliseconds: 500), () {
                  // ignore: use_build_context_synchronously
                  Navigator.of(context).pushReplacementNamed('/signlog');
                });
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // ignore: prefer_const_constructors
                  Text(
                    'Continue',
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 25),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 8),
                  if (_showArrow)
                    // ignore: prefer_const_constructors
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.blue,
                      weight: 10,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
/*
class FirstPage extends StatelessWidget {
  
  const FirstPage({super.key});
   

  @override
  Widget build(BuildContext context) {
    bool _showArrow = false;
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 140,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(200),
            /* borderRadius: BorderRadius.vertical(
              top: Radius.circular(250), // Arrondi en haut
              bottom: Radius.circular(250),
            ),*/
            child: Image.asset('images/photo1.jpeg',
                height: 530, width: 460, fit: BoxFit.cover),
          ),
          Align(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: () {
                
                Navigator.of(context).pushReplacementNamed('/signlog');
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue,
              ),
              child: Text(
                'Continue',
                style: TextStyle(fontSize: 25),
              ),
            ),
          )
        ],
      ),
    ));
  }
}*/
