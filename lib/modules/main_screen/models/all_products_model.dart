import 'package:test_app_actonica/modules/main_screen/models/detail_info.dart';

/// Модель загрузки всех товаров
class AllProductsModel {
  final String category;
  final List<DetailInfoModel> products;

  AllProductsModel({
    required this.category,
    required this.products,
  });

  factory AllProductsModel.fromJson(Map<String, dynamic> json) {
    return AllProductsModel(
      category: json['category'] as String,
      products: (json['products'] as List<dynamic>)
          .map((dynamic e) =>
              DetailInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
