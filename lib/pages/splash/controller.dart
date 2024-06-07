import 'dart:convert';
import 'package:get/get.dart';
import '../../routers/names.dart';

class SplashController extends GetxController {
  SplashController();
  void toHome() {
    Get.offNamed(AppRoutes.home);
  }
}
