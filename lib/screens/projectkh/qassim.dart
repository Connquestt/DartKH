import 'package:flutter/material.dart';

class QassimScreen extends StatelessWidget {
  const QassimScreen({super.key});
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    Map qassim = {
      "مهرجان بريدة للتمور": "assets/images/buraydahDates.png",
      "متحف بريدة": "assets/images/buraydahMuseum.png",
      "مهرجان الكليجا": "assets/images/kulaija.png",
      "مزرعة اكتوبر": "assets/images/octFarm.png",
      "مزرعة وارف": "assets/images/wrfFarm.png",
    };

    List decscription = [
      "يُقام سنويًا في مدينة بريدة، ويُعد من أكبر مهرجانات التمور في العالم، حيث يعرض مجموعة متنوعة من التمور المحلية والعالمية.",
      "متحف يضم مجموعة غنية من القطع الأثرية والتاريخية التي تعكس تراث وثقافة منطقة القصيم والمملكة العربية السعودية بشكل عام.",
      "مهرجان ثقافي يحتفي بالكليجا، وهو نوع من الحلويات التقليدية المصنوعة من التمر، ويشمل فعاليات ترفيهية ومسابقات.",
      "مزرعة سياحية تقدم تجربة فريدة للزوار للاستمتاع بالطبيعة والأنشطة الزراعية، بالإضافة إلى تقديم منتجات زراعية طازجة.",
      "مزرعة عائلية توفر بيئة هادئة وممتعة للزوار، مع مجموعة متنوعة من الأنشطة الترفيهية والتعليمية للأطفال والكبار على حد سواء.",
    ];

    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          "معالم القصيم",
          style: TextStyle(
            color: Color.fromARGB(255, 211, 126, 126),
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 121, 9, 9),
      ),
      backgroundColor: const Color.fromARGB(255, 49, 3, 3),
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
                  color: const Color.fromARGB(255, 109, 36, 36),
                  border: Border.all(
                    color: const Color.fromARGB(255, 94, 11, 11),
                    width: 7,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                //Contains
                child: Column(
                  children: [
                    Text(
                      "${qassim.keys.elementAt(index)}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 211, 126, 126),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //image
                        Container(
                          width: 300,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 94, 11, 11),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                              image: AssetImage(
                                qassim[qassim.keys.elementAt(index)],
                              ),
                              alignment: Alignment.center,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //discerption
                        Container(
                          width: 200,
                          height: 200,
                          child: Text(
                            decscription[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 211, 126, 126),
                            ),
                          ),
                        ),
                        //button
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder:
                            //   ),
                            // );
                          },
                          child: Text("الموقع"),
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
  runApp(const MaterialApp(home: QassimScreen()));
}
