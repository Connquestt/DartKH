import 'dart:ui_web';

import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("My Business Card"),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.yellowAccent,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                margin: const EdgeInsets.only(top: 17),
                width: screenWidth * 0.99,
                height: screenHeight * 0.2,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.blueGrey, width: 4),
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 2, 68, 68),
                      offset: const Offset(-8, -12),
                      blurRadius: 4.1,
                    ),
                    BoxShadow(
                      color: const Color.fromARGB(255, 1, 37, 47),
                      offset: const Offset(8, 12),
                      blurRadius: 4.1,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: Image.asset(
                        "assets/images/hms.png",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("KHalid"),
                        SizedBox(height: 8),
                        Text("KHalid@kh.com"),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        HashUrlStrategy();
                      },
                      child: Text("Hamester"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
