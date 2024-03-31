
import 'package:flutter_clean_architecture/res/routes/routes_name.dart';
import 'package:flutter_clean_architecture/view/home/home_screen.dart';
import 'package:flutter_clean_architecture/view/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class AppRoutes {
  static appRoutes () => [
    GetPage(
        name: RouteName.splashScreen,
        page: () => const SplashScreen(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.rightToLeftWithFade
    ),
    GetPage(
        name: RouteName.homeScreen,
        page: () => const HomeScreen(),
        transitionDuration: const Duration(milliseconds: 250),
        transition: Transition.rightToLeftWithFade
    )
  ];
}