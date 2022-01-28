import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_actonica/modules/main_screen/service/main_screen_servise.dart';
import 'main_screen_event.dart';
import 'main_screen_state.dart';

/// Класс управления состоянием модуля main_screen
class MainScreenBloc extends Bloc<MainScreenEvent, MainScreenState> {
  MainScreenBloc() : super(LoadingDataState()) {
    on<LoadingDataEvent>(
      (event, emit) async {
        // event.isLoad;
        emit(LoadingDataState());
        await Future.delayed(const Duration(seconds: 2));
        final a = await MainScreenService().getAllProductsService();
        emit(
          LoadedDataProductsState(
            listProducts: a,
          ),
        );
      },
    );
  }
}
