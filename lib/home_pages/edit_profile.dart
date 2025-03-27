import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("edit mon profile"),
      ),
      body: Container(
        child: TextButton(onPressed: () {}, child: Text('user name')),
      ),
    );
  }
}
