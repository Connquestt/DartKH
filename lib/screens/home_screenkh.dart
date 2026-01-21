import 'package:flutter/material.dart';

class HomeScreenkh extends StatelessWidget {
  const HomeScreenkh({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Container(
            width: 150,
            height: 100,
            color: Colors.blue,
            child: Text("Hello"),
          ),
          Container(
            width: 150,
            height: 100,
            color: Colors.blue,
            child: Text("World"),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 10),
            child: Container(
              width: 150,
              height: 100,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text('Majed'), Icon(Icons.car_crash)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
