import 'package:test_app_actonica/modules/main_screen/models/all_products_model.dart';

/// Модель загрузки всех товаров
class AllCategoriesModel {
  final String category;
  final List<AllProductsModel> products;

  AllCategoriesModel({
    required this.category,
    required this.products,
  });

  factory AllCategoriesModel.fromJson(Map<String, dynamic> json) {
    return AllCategoriesModel(
      category: json['category'] as String,
      products: (json['products'] as List<dynamic>)
          .map((dynamic e) =>
              AllProductsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
