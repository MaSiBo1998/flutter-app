import 'dart:ffi';

import 'package:get/get.dart';
import '../../../routers/names.dart';

class HomeController extends GetxController {
  HomeController();
  var age = 10.obs;
  var currentIndex = 1.obs;
  void addAge() {
    age.value++;
    print('年龄+1');
  }

  void goBackSplash() {
    Get.offNamed(AppRoutes.init);
  }

  @override
  void onInit() {
    super.onInit();
    print('页面加载');
  }
}
