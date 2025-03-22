import 'package:flutter/material.dart';

class UserType extends StatelessWidget {
  const UserType({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        children: [
          SizedBox(height: 40),
          Row(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Title(
                  color: Colors.white,
                  child: Text(
                    "Select user type",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 45,
          ),
          SizedBox(
            width: double.infinity,
            height: 290,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Title(
                      color: Colors.black,
                      child: Text(
                        "I'am a regular user",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Image.asset('images/photo4.jpeg'),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 140,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: double.infinity,
            height: 290,
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Title(
                      color: Colors.black,
                      child: Text(
                        "For Deaf and Mute People",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )),
                  SizedBox(
                    height: 8,
                  ),
                  Image.asset('images/photo5.jpeg'),
                  SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: 140,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.red,
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Positioned(
            bottom: -50, // Pour qu'il déborde légèrement de l'écran
            left: 0,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 60, // Plus grand pour un bel effet
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(200),
                ),
              ),
            ),
          ),
          /*Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 80, // Hauteur du demi-cercle
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
