import 'dart:async';
import 'package:test_app_actonica/modules/main_screen/service/main_screen_servise.dart';
import 'main_screen_state.dart';

/// Класс управления состоянием модуля main_screen
class MainScreenBloc {
  final _mainScreenStreamController = StreamController<MainScreenState>();

  Stream<MainScreenState> get mainScreenStreamController =>
      _mainScreenStreamController.stream;

  /// Получение перечня всех товаров
  void loadDataProducts() {
    final _allProducts = MainScreenService().getAllProductsService();
    _mainScreenStreamController.sink.add(
      MainScreenState.loadedDataProducts(_allProducts),
    );
  }

  void dispose() {
    _mainScreenStreamController.close();
  }
}
