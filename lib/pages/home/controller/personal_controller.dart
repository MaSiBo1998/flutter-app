import 'dart:ffi';

import 'package:get/get.dart';

class PersonalController extends GetxController {
  PersonalController();
  var age = 10.obs;
  var currentIndex = 1.obs;
  void addAge() {
    age.value++;
    print('年龄+1');
  }

  @override
  void onInit() {
    super.onInit();
    print('页面加载');
  }
}
