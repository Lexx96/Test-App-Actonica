import 'dart:convert';
import 'package:test_app_actonica/modules/main_screen/models/all_products_model.dart';
import 'package:test_app_actonica/modules/main_screen/repository/main_screen_repository.dart';

/// Класс обработки данных модуля main_screen
class MainScreenService {
  /// Получение списка всех товаров
  List<AllProductsModel> getAllProductsService() {
    final String _response = MainScreenRepository().getAllProductsRepository();
    final jsonList = jsonDecode(_response) as List<dynamic>;
    return jsonList
        .map(
            (dynamic e) => AllProductsModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
