import 'package:flutter/material.dart';
import 'package:test_app_actonica/utils/main_navigation/main_navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'modules/main_screen/bloc/main_screen_bloc.dart';
import 'modules/main_screen/bloc/main_screen_event.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MainScreenBloc()
        ..add(
          LoadingDataEvent(),
        ),
      child: MaterialApp(
        initialRoute: MainNavigation().initialRouteMain,
        routes: MainNavigation().routes,
      ),
    );
  }
}
