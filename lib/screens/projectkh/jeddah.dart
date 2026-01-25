import 'package:flutter/material.dart';

class JeddahScreen extends StatelessWidget {
  const JeddahScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    Map jeddah = {
      "البلد": "assets/images/albalad.png",
      "City Walk": "assets/images/cityWalk.png",
      "نافورة الملك فهد": "assets/images/kingFahadFountain.png",
      "Winter Wonderland": "assets/images/winterland.png",
      "مسجد الرحمة": "assets/images/mosque.png",
    };
    List decscription = [
      "البلد هو الحي التاريخي في جدة، ويشتهر بمبانيه التقليدية والأسواق القديمة التي تعكس التراث الثقافي للمملكة.",
      "City Walk هو وجهة ترفيهية حديثة تضم مجموعة متنوعة من المتاجر والمطاعم والمقاهي، وتوفر تجربة تسوق وترفيه فريدة.",
      "نافورة الملك فهد هي واحدة من أعلى النوافير في العالم، وتقع على ساحل جدة، وتوفر مشهدًا خلابًا خاصة في الليل.",
      "Winter Wonderland هو منتزه ترفيهي يقدم تجربة شتوية فريدة في قلب جدة، مع مجموعة من الألعاب والفعاليات الممتعة للعائلات.",
      "مسجد الرحمة، المعروف أيضًا بمسجد العائم، يقع على كورنيش جدة ويتميز بتصميمه المعماري الفريد الذي يجعله يبدو وكأنه يطفو على الماء.",
    ];

    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          "معالم جدة",
          style: TextStyle(
            color: Color.fromARGB(255, 42, 64, 66),
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 54, 220, 241),
      ),
      backgroundColor: const Color.fromARGB(255, 178, 224, 245),
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
                  color: const Color.fromARGB(255, 129, 168, 187),
                  border: Border.all(
                    color: const Color.fromARGB(255, 27, 117, 190),
                    width: 7,
                  ),
                  borderRadius: BorderRadius.circular(40),
                ),
                //Contains
                child: Column(
                  children: [
                    Text(
                      "${jeddah.keys.elementAt(index)}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 42, 64, 66),
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
                              color: const Color.fromARGB(255, 27, 117, 190),
                              width: 3,
                            ),
                            borderRadius: BorderRadius.circular(40),
                            image: DecorationImage(
                              image: AssetImage(
                                jeddah[jeddah.keys.elementAt(index)],
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
                              color: Color.fromARGB(255, 42, 64, 66),
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
  runApp(
    const MaterialApp(home: JeddahScreen(), debugShowCheckedModeBanner: false),
  );
}
