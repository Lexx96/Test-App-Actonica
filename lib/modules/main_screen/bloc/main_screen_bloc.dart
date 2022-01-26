import 'dart:async';
import 'main_screen_state.dart';

/// Класс управления состоянием модуля main_screen
class MainScreenBloc {
  final _mainScreenStreamController = StreamController<MainScreenState>();

  Stream<MainScreenState> get showQRCodeStreamController =>
      _mainScreenStreamController.stream;

  void loadedDataProducts() {}

  void dispose() {
    _mainScreenStreamController.close();
  }
}
