// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // centerTitle: true,
        toolbarHeight: 220,
        automaticallyImplyLeading: false,
        /* title: Text('Profile'),
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushNamed('/signlogpage');
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
        ],*/
        // ignore: prefer_const_constructors
        shape: RoundedRectangleBorder(
          // ignore: prefer_const_constructors
          borderRadius: BorderRadius.vertical(
            // ignore: prefer_const_constructors
            bottom: Radius.circular(30),
          ),
        ),
        flexibleSpace: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signlogpage');
                      },
                    ),
                    // ignore: prefer_const_constructors
                    Text(
                      'Profile',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      // ignore: prefer_const_constructors
                      icon: Icon(Icons.settings, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed('/settingsscreen');
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text("open setting")),
                        );
                      },
                    ),
                  ],
                ),
              ),
              // ignore: prefer_const_constructors
              Positioned(
                bottom: 65,
                left: 0,
                right: 0,
                // ignore: prefer_const_constructors
                child: Center(
                  // ignore: prefer_const_constructors
                  child: CircleAvatar(
                    radius: 45,
                    // ignore: prefer_const_constructors
                    backgroundImage: AssetImage('images/photo6.jpeg'),
                  ),
                ),
              ),
              // ignore: prefer_const_constructors
              Positioned(
                bottom: 25,
                left: 160,
                right: 0,
                // ignore: prefer_const_constructors
                child: Center(
                    // ignore: prefer_const_constructors
                    child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Center(
                      // ignore: prefer_const_constructors
                      child: Text(
                        'User name ',
                        // ignore: prefer_const_constructors
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  // ignore: prefer_const_constructors
                  TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      /* border: OutlineInputBorder(),
                     contentPadding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 12.0),*/ //pour faire cadre textfield
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: prefer_const_constructors
                  TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'FLast Name',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: prefer_const_constructors
                  TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: prefer_const_constructors
                  TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  // ignore: prefer_const_constructors
                  TextField(
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                      hintText: 'City',
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 220,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/selectusertype');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Insecription with succees")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        // ignore: prefer_const_constructors
                        child: Text('Create ',
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontSize: 18,
                            ))),
                  ),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 20,
                  ),
                  /*
                  SizedBox(
                    width: 220,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/signlogpage');
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Log Out ',
                            style: TextStyle(
                              fontSize: 18,
                            ))),
                  ),*/
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
