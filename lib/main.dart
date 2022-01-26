import 'package:flutter/material.dart';
import 'package:test_app_actonica/utils/main_navigation/main_navigation.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainNavigation().initialRouteMain,
      routes: MainNavigation().routes,
    );
  }
}
