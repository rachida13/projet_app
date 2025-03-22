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
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
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
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pushNamed('/signlogpage');
                      },
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
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
              Positioned(
                bottom: 65,
                left: 0,
                right: 0,
                child: Center(
                  child: CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage('images/photo6.jpeg'),
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 160,
                right: 0,
                child: Center(
                    child: Row(
                  children: [
                    Center(
                      child: Text(
                        'User name ',
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
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'First Name',
                      /* border: OutlineInputBorder(),
                     contentPadding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 12.0),*/ //pour faire cadre textfield
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'FLast Name',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'City',
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                    width: 220,
                    height: 45,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/usertype');
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Insecription with succees")),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                        child: Text('Create ',
                            style: TextStyle(
                              fontSize: 18,
                            ))),
                  ),
                  SizedBox(
                    height: 20,
                  ),
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
