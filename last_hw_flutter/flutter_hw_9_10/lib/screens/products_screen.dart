import 'package:dart_kh/service/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Abo 5amsah store",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: FutureBuilder(
          future: Api.getData(),
          builder: (context, snapshot) {
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.lightGreen.shade200,
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 18, 96, 51),
                        blurRadius: 10,
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "${snapshot.data![index].productTitle}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.brown.shade800,
                          fontSize: 25,
                        ),
                      ),
                      Image.network(
                        "${snapshot.data![index].productThumbnail}",
                      ),
                      Text(
                        "${snapshot.data![index].productDescription}",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.brown.shade500,
                        ),
                      ),
                      //rating bar
                      RatingBar.builder(
                        initialRating: snapshot.data![index].productRating!,
                        minRating: snapshot.data![index].productRating!,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) =>
                            Icon(Icons.star, color: Colors.amber),
                        onRatingUpdate: (rating) {},
                        ignoreGestures: true,
                      ),
                      //price
                      Text(
                        "\$ ${snapshot.data![index].productPrice}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.red.shade700,
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class Rating {}

void main() {
  runApp(const MaterialApp(home: ProductsScreen()));
}
