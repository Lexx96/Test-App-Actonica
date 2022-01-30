import 'package:test_app_actonica/modules/main_screen/models/all_categories_model.dart';

/// Класс состояний для модуля main_screen
abstract class MainScreenState {
  MainScreenState();
}

/// Состояние загрузки данных о товарах
class LoadingDataState extends MainScreenState {}

/// Состояние загруженных данных о товарах
class LoadedDataProductsState extends MainScreenState {
  List<AllCategoriesModel> listProducts;
  LoadedDataProductsState({required this.listProducts});
}
