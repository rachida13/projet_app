import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool pushNotifications = false;
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? Colors.black : Colors.white,
      body: Column(
        children: [
          // HEADER
          Container(
            // ignore: prefer_const_constructors
            color: Color(0xFF1664F3),
            // ignore: prefer_const_constructors
            padding: EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 20),
            child: Row(
              children: [
                // ignore: prefer_const_constructors
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    // ignore: prefer_const_constructors
                    Icon(Icons.settings, color: Colors.white, size: 40),
                    // ignore: prefer_const_constructors
                    SizedBox(width: 8),
                    // ignore: prefer_const_constructors
                    Text(
                      'Settings',
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Expanded(child: Container()), // pour prendre l'espace restant
                GestureDetector(
                  onTap: () {},
                  child: IconButton(
                    // ignore: prefer_const_constructors
                    icon: Icon(Icons.arrow_back, color: Colors.white, size: 24),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/profilpage');
                    },
                  ),
                ),
              ],
            ),
          ),

          // PROFILE
          Container(
            // ignore: prefer_const_constructors
            padding: EdgeInsets.symmetric(vertical: 16),
            color: darkMode ? Colors.black : Colors.white,
            child: Column(
              children: [
                // ignore: prefer_const_constructors
                CircleAvatar(
                  radius: 35,
                  // ignore: prefer_const_constructors
                  backgroundImage: AssetImage(
                      'images/photo6.jpeg'), // replace with your avatar
                ),
                // ignore: prefer_const_constructors
                SizedBox(height: 8),
                Text(
                  'Mon Nom',
                  style: TextStyle(
                    fontSize: 25,
                    color: darkMode ? Colors.white : Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 0.25,
            color: Colors.grey,
            // ignore: prefer_const_constructors
            margin: EdgeInsets.only(top: 16, bottom: 8),
          ),
          // SETTINGS OPTIONS
          Expanded(
            child: ListView(
              children: [
                // Account Settings
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 0, 4),
                  // ignore: prefer_const_constructors
                  child: Text(
                    'Account Settings',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                ListTile(
                  // ignore: prefer_const_constructors
                  leading: Icon(Icons.person),
                  title: Text(
                    'Edit profile',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.of(context).pushNamed('/editprofile');
                  },
                ),
                ListTile(
                  // ignore: prefer_const_constructors
                  leading: Icon(Icons.lock),
                  title: Text(
                    'Privacy',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.of(context).pushNamed('/changepasswordpage');
                  },
                ),
                SwitchListTile(
                  title: Text(
                    'Push notifications',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  value: pushNotifications,
                  onChanged: (bool value) {
                    setState(() {
                      pushNotifications = value;
                    });
                  },
                  // ignore: prefer_const_constructors
                  activeColor: Color(0xFF1664F3),
                ),
                SwitchListTile(
                  /* title: Text('Dark mode'),
                  value: darkMode,
                  onChanged: (bool value) {
                    setState(() {
                      darkMode = value;
                    });
                  },
                  activeColor: Color(0xFF1664F3),
                ),*/
                  title: Text(
                    'Dark mode',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  value: darkMode,
                  onChanged: (bool value) {
                    setState(() {
                      darkMode = value;
                    });
                  },
                  // ignore: prefer_const_constructors
                  activeColor: Color(0xFF1664F3),
                ),
                Container(
                  height: 0.25,
                  color: Colors.grey,
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(top: 16, bottom: 8),
                ),
                // More
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 4),
                  // ignore: prefer_const_constructors
                  child: Text(
                    'More',
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'About us',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.of(context).pushNamed('/aboutus');
                  },
                ),
                ListTile(
                  title: Text(
                    'Terms and conditions',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.of(context).pushNamed('/termsandconditions');
                  },
                ),
                ListTile(
                  // ignore: prefer_const_constructors
                  leading: Icon(Icons.logout),
                  title: Text(
                    'log out',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  // ignore: prefer_const_constructors
                  trailing: Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.of(context).pushNamed('/signlogpage');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
