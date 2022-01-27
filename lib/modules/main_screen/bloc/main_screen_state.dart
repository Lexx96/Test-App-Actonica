import 'package:test_app_actonica/modules/main_screen/models/all_products_model.dart';

/// Класс состояний модуля main_screen
class MainScreenState {
  MainScreenState();
  factory MainScreenState.loadedDataProducts(
      List<AllProductsModel> allProducts) = LoadedDataProducts;
}

/// Состояние загрузки данных о товарах
class LoadedDataProducts extends MainScreenState {
  List<AllProductsModel> allProducts;
  LoadedDataProducts(this.allProducts);
}
