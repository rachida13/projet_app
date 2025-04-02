import 'package:flutter/material.dart';

class SelectionneAvatr extends StatefulWidget {
  @override
  _SelectionneAvatrState createState() => _SelectionneAvatrState();
}

class _SelectionneAvatrState extends State<SelectionneAvatr> {
  int? selectedIndex;

  final List<String> avatars = List.generate(
    9,
    (index) => 'assets/avatars/avatr_${index + 1}.PNG',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Choisir un avatar")),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemCount: avatars.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: selectedIndex == index
                            ? Border.all(color: Colors.blue, width: 3)
                            : null,
                        shape: BoxShape.circle,
                      ),
                      child: ClipOval(
                        child: Image.asset(
                          avatars[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          if (selectedIndex != null)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, avatars[selectedIndex!]);
                },
                child: const Text("Valider"),
              ),
            ),
        ],
      ),
    );
  }
}
