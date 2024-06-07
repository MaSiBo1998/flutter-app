import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'observers.dart';
import 'names.dart';
import '../pages/splash/view.dart';
import '../pages/splash/binding.dart';
import '../pages/home/view.dart';
import '../pages/home/bindings.dart';

class AppPages {
  static const INIT = AppRoutes.init;
  static final RouteObserver<Route> observer = RouteObservers();
  static List<String> history = [];
  static final List<GetPage> routers = [
    GetPage(
        name: AppRoutes.init,
        page: () => SplashPage(),
        binding: SplashBinding()),
    GetPage(
        name: AppRoutes.home, page: () => MainPage(), binding: MainBinding()),
  ];
}
