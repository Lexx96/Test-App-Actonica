/// Класс состояний модуля main_screen
class MainScreenState {
  MainScreenState();
  factory MainScreenState.loadedDataProducts() = LoadedDataProducts;
}

/// Состояние загрузки данных о товарах
class LoadedDataProducts extends MainScreenState {}
