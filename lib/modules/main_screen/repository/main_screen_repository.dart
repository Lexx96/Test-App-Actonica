import 'package:flutter/services.dart';

/// Класс предоставления данных модуля main_screen
class MainScreenRepository {
  /// Получение списка всех товаров
  Future<String> getAllProductsRepository() async {
    return await rootBundle.loadString('assets/data/data.json');
  }
}
