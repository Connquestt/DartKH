import 'package:flutter/material.dart';

class RiyadhScreen extends StatelessWidget {
  const RiyadhScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    Map riyadh = {
      "الدرعيه": "assets/images/diriyah.png",
      "قصر المصمك": "assets/images/musmac.png",
      "حافة العالم": "assets/images/edgeOfTheWorld.png",
      "Boulevard City": "assets/images/blvd.png",
      "مدينة الملك عبدالله المالية": "assets/images/kafd.png",
    };
    List decscription = [
      "مهد الدولة السعودية الأولى، وتضم حي الطريف المصنف ضمن التراث العالمي لليونسكو، وتُعد رمزًا للتاريخ الوطني.",
      "قلعة تاريخية تعكس التراث الثقافي للمملكة، وتقع في قلب الرياض وتُعد نقطة انطلاق لاستكشاف المدينة.",
      "تشكّل منحدرات صخرية شاهقة توفر إطلالات خلابة على الصحراء المحيطة، وهي وجهة شهيرة لمحبي المغامرات والتخييم.",
      "وجهة ترفيهية حديثة تضم مجموعة متنوعة من المتاجر والمطاعم والمقاهي، وتوفر تجربة تسوق وترفيه فريدة.",
      "مركز مالي حديث يضم مبانٍ شاهقة ومساحات عمل متطورة، ويُعتبر مركزًا للأعمال والابتكار في المملكة.",
    ];

    return Scaffold(
      //AppBar
      appBar: AppBar(
        title: Text(
          "معالم الرياض",
          style: TextStyle(
            color: Color.fromARGB(255, 185, 153, 110),
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        backgroundColor: const Color.fromARGB(255, 112, 75, 26),
      ),
      backgroundColor: const Color.fromARGB(255, 61, 29, 3),
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
                ),
                //Contains
                child: Column(
                  children: [
                    Text(
                      "${riyadh.keys.elementAt(index)}",
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 151, 124, 88),
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
                              color: Color.fromARGB(255, 151, 124, 88),
                            ),
                          ),
                        ),
                        //button
                        ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: ,
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
  runApp(const MaterialApp(home: RiyadhScreen()));
}
