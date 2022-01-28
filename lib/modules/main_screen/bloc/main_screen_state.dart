import 'package:test_app_actonica/modules/main_screen/models/all_products_model.dart';

/// Класс состояний модуля main_screen
abstract class MainScreenState {
  MainScreenState();
}

/// Состояние загрузки данных о товарах
class LoadingDataState extends MainScreenState {}

/// Состояние загруженных данных о товарах
class LoadedDataProductsState extends MainScreenState {
  List<AllProductsModel> listProducts;
  LoadedDataProductsState({required this.listProducts});
}
