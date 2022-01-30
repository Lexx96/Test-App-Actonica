import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_actonica/modules/main_screen/service/main_screen_serviсe.dart';
import 'main_screen_event.dart';
import 'main_screen_state.dart';

/// Класс управления состоянием модуля main_screen
class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(LoadingDataState()) {
    on<LoadingDataEvent>(
      (event, emit) async {
        try {
          emit(LoadingDataState());
          await Future.delayed(const Duration(seconds: 2));
          final _listProducts =
              await MainScreenService().getAllProductsService();
          emit(
            LoadedDataProductsState(
              listProducts: _listProducts,
            ),
          );
        } on SocketException {
          emit(SocketExceptionState());
        } catch (_) {
          emit(OtherErrorState());
        }
      },
    );
  }
}
