import 'package:flutter/material.dart';

class HomeScreenKH extends StatelessWidget {
  const HomeScreenKH({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 226, 204, 3),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("KHalid's app"),
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              color: const Color.fromARGB(255, 5, 24, 34),
              child: Column(
                children: [
                  Image.asset(
                    "lib/images/flutter.png",
                    fit: BoxFit.scaleDown,
                    width: 200,
                    height: 200,
                  ),
                  Text(
                    "Best UI Dev!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: AnimatedContainer(
              duration: Duration(seconds: 10),
              color: const Color.fromARGB(255, 2, 63, 45),
              child: Column(
                children: [
                  Container(
                    color: Colors.amber,
                    child: Text("Better Call Saul!"),
                  ),
                  Container(
                    child: Image.network(
                      "https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExNTdremR2YXlkczczYTlseHhjamwxMWFybXZwaXdpN3NjZTQxNmVkcSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Bs0GXj3ew6xxK/giphy.gif",
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
