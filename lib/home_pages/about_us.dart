import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            ),
            // ignore: prefer_const_constructors
            title: Text(
              'About us ',
              // ignore: prefer_const_constructors
              style: TextStyle(fontSize: 28),
            )),
        body: Padding(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.all(20.00),
          child: Column(
            children: [
              Title(
                  color: Colors.black,
                  // ignore: prefer_const_constructors
                  child: Text(
                    ' Notre application a été conçue pour faciliter la communication entre les personnes entendantes, aveugles et muettes. Ce projet est le fruit du travail d’étudiants de l’Université Abou Bekr Belkaid, réalisé dans le cadre d’un mini-projet de fin d’études de licence. Nous avons à cœur de proposer une solution accessible et inclusive pour aider à briser les barrières de la communication.',
                    // ignore: prefer_const_constructors
                    style: TextStyle(fontSize: 22),
                  ))
            ],
          ),
        ));
  }
}
