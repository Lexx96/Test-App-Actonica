import 'package:flutter/material.dart';
import 'package:test_app_actonica/utils/main_navigation/main_navigation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app_actonica/utils/themes/my_dark_theme.dart';
import 'package:test_app_actonica/utils/themes/my_light_theme.dart';
import 'generated/l10n.dart';
import 'modules/main_screen/bloc/main_screen_bloc.dart';
import 'modules/main_screen/bloc/main_screen_event.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

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
      child: AdaptiveTheme(
        light: myLightTheme,
        dark: myDarkTheme,
        initial: AdaptiveThemeMode.light,
        builder: (light, dark) => MaterialApp(
          theme: light,
          darkTheme: dark,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,
          localeResolutionCallback: (locales, supportedLocales) {
            if (locales == null) {
              return supportedLocales.first;
            }
          },
          initialRoute: MainNavigation().initialRouteMain,
          routes: MainNavigation().routes,
        ),
      ),
    );
  }
}
