import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 17, bottom: 10),
                width: screenWidth * 0.9,
                height: screenHeight * 0.15,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.black, width: 4),
                  borderRadius: BorderRadius.circular(1000),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.teal,
                      offset: const Offset(-8, -12),
                      blurRadius: 4.1,
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 4, 90, 90),
                      offset: const Offset(8, 12),
                      blurRadius: 4.1,
                    ),
                  ],
                ),
                child: Text("Hello", textAlign: TextAlign.center),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
