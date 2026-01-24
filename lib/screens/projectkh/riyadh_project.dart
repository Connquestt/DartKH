import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    Map riyadh = {
      "Diriyah": "assets/images/diriyah.png",
      "Musmac Palace": "assets/images/musmac.png",
      "Edge of The World": "assets/images/edgeOfTheWorld.png",
      "Boulevard City": "assets/images/blvd.png",
      "KAFD": "assets/images/kafd.png",
    };

    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text("Welcome to Riyadh"),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 114, 66, 3),
      ),
      backgroundColor: const Color.fromARGB(255, 27, 12, 0),
      //Body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                //Size and view
                padding: const EdgeInsets.symmetric(horizontal: 8),
                margin: const EdgeInsets.only(top: 30),
                width: screenWidth,
                height: screenHeight * 0.17,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 100, 66, 22),
                  border: Border.all(
                    color: const Color.fromARGB(255, 73, 49, 4),
                    width: 7,
                  ),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-8, -12),
                      blurRadius: 10.1,
                      color: const Color.fromARGB(255, 85, 58, 22),
                    ),
                    BoxShadow(
                      offset: Offset(8, 12),
                      blurRadius: 10.1,
                      color: const Color.fromARGB(255, 156, 105, 39),
                    ),
                  ],
                ),
                //Contains
                child: Column(
                  children: [
                    Text(
                      "${riyadh.keys.elementAt(index)}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //image
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 90, 54, 8),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                              image: AssetImage(
                                riyadh[riyadh.keys.elementAt(index)],
                              ),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: HomeScreen()));
}
