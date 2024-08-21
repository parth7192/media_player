import 'package:flutter/cupertino.dart';
import 'package:media_player/Pages/HomePage/home_page.dart';
import 'package:media_player/Pages/Splash_Screen/splash_screen.dart';

class AppRoutes {
  AppRoutes._();
  static final AppRoutes instance = AppRoutes._();

  String splash = '/';
  String home = 'home_page';

  Map<String, WidgetBuilder> allRoutes = {
    '/': (context) => const SplashScreen(),
    'home_page': (context) => const HomePage(),
  };
}
