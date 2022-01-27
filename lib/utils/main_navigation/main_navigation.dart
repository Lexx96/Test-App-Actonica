import 'package:flutter/material.dart';
import 'package:test_app_actonica/modules/ddd.dart';
import 'package:test_app_actonica/modules/main_screen/main_screen.dart';

/// Класс параметров навигации
abstract class MainNavigationRouteName {
  static const mainScreen = 'mainScreen';
}

/// Класс навигации
class MainNavigation {
  final initialRouteMain = MainNavigationRouteName.mainScreen;

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigationRouteName.mainScreen: (context) => MyHomePage(
          title: '',
        ),
  };
}
