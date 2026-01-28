import 'package:dart_kh/extensions/screen_size.dart';
import 'package:flutter/material.dart';

class FiboScreen extends StatelessWidget {
  const FiboScreen({super.key});

  Widget build(BuildContext context) {
    var screenWidth = ScreenSize(context).widthScreen;
    var screenHeight = ScreenSize(context).heightScreen;

    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        child: Column(
          children: [
            Container(
              width: screenWidth,
              height: screenHeight / 2,
              color: Colors.red,
              alignment: Alignment.center,
              child: Text(
                "8",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth / 2 / 3,
                ),
              ),
            ),
            Center(
              child: Container(
                child: Row(
                  children: [
                    Container(
                      width: screenWidth / 2,
                      height: screenHeight / 2,
                      color: Colors.blue,
                      alignment: Alignment.center,
                      child: Text(
                        "5",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth / 2 / 3,
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: screenWidth / 4,
                                    height: screenHeight / 8,
                                    color: Colors.green,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 4 / 3,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: screenWidth / 4,
                                    height: screenHeight / 8,
                                    color: Colors.blue.shade400,
                                    alignment: Alignment.center,
                                    child: Text(
                                      "1",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: screenWidth / 4 / 3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                width: screenWidth / 4,
                                height: screenHeight / 4,
                                alignment: Alignment.center,

                                color: Colors.red.shade300,

                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: screenWidth / 4 / 3,
                                  ),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            width: screenWidth / 2,
                            height: screenHeight / 4,
                            color: Colors.green.shade100,
                            alignment: Alignment.center,

                            child: Text(
                              "3",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: screenWidth / 4 / 3,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main(List<String> args) {
  runApp(KHApp());
}

class KHApp extends StatelessWidget {
  const KHApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FiboScreen());
  }
}
