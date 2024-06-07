import 'controller/home_controller.dart';
import 'controller/personal_controller.dart';
import 'package:get/get.dart';

import 'controller/main_controller.dart';

class MainBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<PersonalController>(() => PersonalController());
  }
}
