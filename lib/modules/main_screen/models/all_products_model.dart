/// Модель загрузки перечня товаров в категории
class AllProductsModel {
  final String title;
  final String description;
  final int price;
  final String image;

  AllProductsModel({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  factory AllProductsModel.fromJson(Map<String, dynamic> json) {
    return AllProductsModel(
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      image: json['image'] as String,
    );
  }
}
