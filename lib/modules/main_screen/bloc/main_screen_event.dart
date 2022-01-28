/// Класс событий для модуля main_screen
abstract class MainScreenEvent {}

/// Событие загрузки данных
class LoadingDataEvent extends MainScreenEvent {}

/// Событие загруженных данных
class LoadedDataEvent extends MainScreenEvent {}
