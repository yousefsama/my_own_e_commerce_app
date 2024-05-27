class Categorymodel {
  final String image;
  final String name;

  Categorymodel({required this.image, required this.name});
  factory Categorymodel.fromJson(jsonData) {
    return Categorymodel(
      image: jsonData['image'],
      name: jsonData['name'],
    );
  }
}
