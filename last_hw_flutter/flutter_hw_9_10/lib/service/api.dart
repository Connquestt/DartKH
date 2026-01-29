import 'dart:convert';

import 'package:dart_kh/models/products_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static Future<List<ProductsModel>> getData() async {
    var uri = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(uri);
    var result = jsonDecode(response.body);

    List<ProductsModel> productsList = [];

    for (var element in result["products"]) {
      productsList.add(ProductsModel.fromJson(element));
    }
    return productsList;
  }
}
