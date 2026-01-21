import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsetsGeometry.only(top: 12, left: 6),
            child: Container(
              width: 250,
              height: 200,
              color: Colors.blue,
              child: Text("names", textAlign: TextAlign.center),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(top: 12, left: 6),
            child: Container(
              width: 250,
              height: 200,
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("KHalid"), Icon(Icons.car_crash)],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
