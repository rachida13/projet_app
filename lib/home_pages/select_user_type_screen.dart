import 'dart:async';
import 'package:flutter/material.dart';

class SelectUserTypeScreen extends StatefulWidget {
  @override
  _SelectUserTypeScreenState createState() => _SelectUserTypeScreenState();
}

class _SelectUserTypeScreenState extends State<SelectUserTypeScreen> {
  int selectedIndex = -1;
  bool isFirstColor = true;

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        isFirstColor = !isFirstColor;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: const Duration(seconds: 3),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: isFirstColor
                ? [
                    const Color.fromARGB(255, 6, 26, 207),
                    Color.fromRGBO(255, 255, 255, 1),
                  ]
                : [
                    const Color.fromRGBO(255, 255, 255, 1),
                    const Color.fromARGB(255, 6, 26, 207),
                  ],
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 50),

            // زر الرجوع
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Select User Type",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 40),

            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: List.generate(3, (index) {
                  return AnimatedPositioned(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                    top: selectedIndex == index ? 100 : (index * 80.0) + 200,
                    child: UserOptionCard(
                      title: index == 0
                          ? "I am a regular user"
                          : index == 1
                              ? "For Deaf and Mute people"
                              : "Learn sign language",
                      image: index == 0
                          ? "images/jhgvc.PNG"
                          : index == 1
                              ? "images/zin.jpg"
                              : "images/zina.jpg",
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });

                        if (index == 0) {
                          Navigator.pushNamed(context, '/select');
                        }
                      },
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserOptionCard extends StatelessWidget {
  final String title;
  final String image;
  final bool isSelected;
  final VoidCallback onTap;

  const UserOptionCard({
    required this.title,
    required this.image,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: 300,
        height: 120,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
            colorFilter: isSelected
                ? null
                : ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 10,
                spreadRadius: 2,
              ),
          ],
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
