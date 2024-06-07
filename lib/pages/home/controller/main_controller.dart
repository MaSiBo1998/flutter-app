import 'dart:ffi';

import 'package:Pesoportuna/pages/home/view/personal_view.dart';
import 'package:get/get.dart';
import '../view/home_view.dart';

class MainController extends GetxController {
  MainController();
  List<GetView> viewList = [HomePage(), PersonalPage()];
  var age = 10.obs;
  var currentIndex = 0.obs;
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
