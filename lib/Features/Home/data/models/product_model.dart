class ProductModel {
  final String name;
  final String image;
  final String? description;
  final String price;

  ProductModel(
      {required this.name,
      required this.image,
      required this.description,
      required this.price});

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
        name: jsonData['name'],
        image: jsonData['image'],
        description: jsonData['description'],
        price: jsonData['price']);
  }
}
