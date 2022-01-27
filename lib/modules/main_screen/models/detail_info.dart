/// Модель загрузки перечня товаров в категории
class DetailInfoModel {
  final String title;
  final String description;
  final int price;
  final String image;

  DetailInfoModel({
    required this.title,
    required this.description,
    required this.price,
    required this.image,
  });

  factory DetailInfoModel.fromJson(Map<String, dynamic> json) {
    return DetailInfoModel(
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as int,
      image: json['image'] as String,
    );
  }
}
