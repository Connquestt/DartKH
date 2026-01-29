class ProductsModel {
  int? productId;
  String? productTitle;
  String? productDescription;
  double? productPrice;
  double? productRating;
  String? productThumbnail;
  List? images;
  List? reviews;

  ProductsModel({
    this.productId,
    this.productTitle,
    this.productDescription,
    this.productPrice,
    this.productRating,
    this.productThumbnail,
    this.reviews,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      productId: (json['id'] as num?)?.toInt(),
      productTitle: json['title'] ?? "No Title",
      productDescription: json['description'] ?? "No Description",
      productPrice: (json['price'] as num?)?.toDouble(),
      productRating: (json['rating'] as num?)?.toDouble(),
      productThumbnail: json['thumbnail'] ?? "assets/images/noimage.png",
      reviews: json['reviews'] ?? [],
    );
  }
}
