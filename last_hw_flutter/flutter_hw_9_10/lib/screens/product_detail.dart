import 'package:dart_kh/extensions/screen_size.dart';
import 'package:dart_kh/models/products_model.dart';
import 'package:dart_kh/services/url_launch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetail extends StatelessWidget {
  final ProductsModel product;
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var screenWidth = context.screenWidth;
    var screenHeight = context.screenHeight;
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: Center(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(40),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 24, 48, 4),
                      blurRadius: screenWidth,
                      blurStyle: BlurStyle.outer,
                    ),
                  ],
                ),
                child: Image.network("${product.productThumbnail}"),
              ),
              SizedBox(height: 20),
              Text(
                "${product.productDescription}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.brown.shade500,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "\$ ${product.productPrice}",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.red.shade700,
                ),
              ),
              Container(
                height: screenHeight / 5,
                width: screenWidth / 2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView.builder(
                  itemCount: product.reviews!.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        RatingBar.builder(
                          initialRating: product.reviews![index]["rating"],
                          minRating: product.reviews![index]["rating"],
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) =>
                              Icon(Icons.star, color: Colors.amber),
                          onRatingUpdate: (rating) {},
                          ignoreGestures: true,
                        ),
                        Text("${product.reviews![index]['comment']}"),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: UrlLaunch(
                  link: "https://www.amazon.sa/${product.productTitle}",
                ).launch,
                child: Text("Buy"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

