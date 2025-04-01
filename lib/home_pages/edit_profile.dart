import 'package:exam_app/home_pages/edit_icon.dart';
import 'package:flutter/material.dart';

/*class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Positioned(
              child: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
      body: Container(
          child: Column(
        children: [
          Text(
            "Edit Profile",
            style: TextStyle(fontSize: 24),
          ),
        ],
      )),
    );
  }
}*/
/*
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  TextEditingController fullNameController =
      TextEditingController(text: "Puerto Rico");
  TextEditingController nickNameController =
      TextEditingController(text: "puerto_rico");
  TextEditingController emailController =
      TextEditingController(text: "youremail@domain.com");
  TextEditingController phoneController =
      TextEditingController(text: "123-456-7890");
*/
class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text("Edit Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Image de profil avec bouton d'édition
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('images/photo6.jpeg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/editicon');
                      },
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(Icons.edit,
                            color: Colors.white, size: 18),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text("user name",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),

              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                labelText: 'Full Name',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.5),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              )),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                labelText: 'Nick Name',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.5),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              )),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.5),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              )),
              SizedBox(height: 20),
              TextField(
                  decoration: InputDecoration(
                labelText: 'Phone Number',
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 2.5),
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              )),

              SizedBox(height: 40),

              // Bouton Submit
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Ajoute ici la logique pour enregistrer les modifications
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  child: Text("SUBMIT",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
