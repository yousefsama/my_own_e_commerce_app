class CartModel {
  final String id;
  final String description;
  final String image;
  final String name;
  final String price;

  CartModel(this.id,
      {required this.description,
      required this.image,
      required this.name,
      required this.price});

  factory CartModel.fromJson(jsonData) {
    return CartModel(jsonData['id'],
        description: jsonData['description'],
        image: jsonData['image'],
        name: jsonData['name'],
        price: jsonData['price']);
  }
}
