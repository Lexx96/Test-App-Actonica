import 'package:test_app_actonica/modules/main_screen/models/detail_info.dart';

/// Модель загрузки всех товаров
class AllProductsModel {
  final String product;
  final List<DetailInfoModel> info;

  AllProductsModel({
    required this.product,
    required this.info,
  });

  factory AllProductsModel.fromJson(Map<String, dynamic> json) {
    return AllProductsModel(
      product: json['product'] as String,
      info: (json['info'] as List<dynamic>)
          .map((dynamic e) => DetailInfoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }
}
